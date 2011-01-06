class Account < ActiveRecord::Base
  acts_as_nested_set
  acts_as_tree
  
  def self.find_for_treegrid(params)
    case params[:grid]
      when :demo1102
        result = find_nested(params)
      when :demo1206
        result = find_adjacency(params)
      else
        raise ArgumentError, "Invalid example '#{list}' for treegrid"
    end
    return result
  end
  
  def self.find_nested(args)
    result = Array.new
    if params[:nodeid]
      
    else
      
    end
    
#    args[:order] = "lft"
#    if nodeid
#      tcond = "lft > #{n_left} AND rgt < #{n_right} AND level = #{n_level+1}"
#      if cond.blank?
#        args[:conditions] = tcond
#      else
#        args[:conditions] += "AND #{tcond}"
#      end
#    else
#      tcond = "level=0"
#      if cond.blank?
#        args[:conditions] = tcond
#      else
#        args[:conditions] += "AND #{tcond}"
#      end
#    end
    result
  end
  
  def self.find_adjacency(args)
    result = Array.new
    
    result
  end

  def self.get_children1(id)
    result = Array.new
    if id == "1"
      node = find_by_title("ROOT")
    else
      node = find(id)
    end
    children = node.children
    if id != 0
      children.each do |child| 
        result << {
          :data => {
            :title => I18n.t(child.title),
            :icon  => (child.icon) ? "#{child.icon}" : nil
          },  
          :attr => {
            :id  => "node_#{child.id.to_s}", 
            :rel => child.ntype,
            :href  => (child.url) ? "#{child.url}" : nil
          },
          :state => (child.right - child.left) > 1 ? "closed" : ""
        }
      end
    end    
    return result
  end
  
      
  
  gridify :demo1102,
    :title          => I18n.t('txt.jqgrid.demo.33tree'),
    :url            => "/jqgrid/demo?model=account",
    :data_type      => :xml,
    :colNames       => [
                        I18n.t('activerecord.attributes.account.name'),
                        I18n.t('activerecord.attributes.account.acc_num'),
                        I18n.t('activerecord.attributes.account.debit'),
                        I18n.t('activerecord.attributes.account.credit'),
                        I18n.t('activerecord.attributes.account.balance')
                       ],
    :colModel       => [
                        { :name  => 'name',
                          :width =>  100 },
                        { :name  => 'acc_num',
                          :width =>  50,
                          :align => :right },
                        { :name  => 'debit',
                          :width =>  80,
                          :align => :right },
                        { :name  => 'credit',
                          :width =>  80,
                          :align => :right },
                        { :name  => 'balance',
                          :width =>  80,
                          :align => :right }
                       ],
    :height         => :auto,
    :sortable       => false,
    :tree_grid      => true,
    :jqgrid_options => { #:treedatatype   => :json,
                         #:treeGridModel  => :nested,,
                         #:ExpandColClick => true,
                         :ExpandColumn   => :name }
end
