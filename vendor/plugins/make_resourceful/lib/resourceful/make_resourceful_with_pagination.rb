module Resourceful
  class Builder   
    def paginate(options={})
      @controller.resourceful_pagination_options.merge!(options)
      
      @controller.class_eval do
        include Resourceful::Pagination
        cattr_accessor :resourceful_pagination_finder_options
       
        self.resourceful_pagination_finder_options = resourceful_pagination_options.except(:pagination_method, :current_page)
      end
    end
  end

  module Pagination
    def current_objects
      return @current_objects if defined?(@current_objects)
      options = self.class.resourceful_pagination_finder_options.dup
      options[:conditions] = get_pagination_conditions(options[:conditions])
      options[:page] = get_current_page
      pagination_method = self.class.resourceful_pagination_options[:pagination_method]
      @current_objects = current_model.send(pagination_method, :all, options)
    end
   
   private 
    def get_pagination_conditions(conditions)      
      case conditions
        when String then conditions
        when Hash   then conditions
        when Symbol then self.send(conditions)
        when Proc   then instance_eval(&conditions)
        else nil
      end
    end

    def get_current_page
      current_page = self.class.resourceful_pagination_options[:current_page]
      case current_page
        when Symbol then self.send(current_page)
        when Proc   then instance_eval(&current_page)
        else nil
      end
    end
  end
end

ActionController::Base.class_eval do
  self.class_inheritable_accessor :resourceful_pagination_options
  self.resourceful_pagination_options = { 
    :pagination_method => :paginate,      
    :order => 'id',
    :current_page => lambda { params[:page] }
  }
end
