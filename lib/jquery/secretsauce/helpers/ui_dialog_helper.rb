module SecretSauce
  module Helpers
    
    module UiDialogHelper
      
      class UiDialogBuilder
        
        attr_accessor :html_options
        
        
        def initialize(*args)
          options = args.extract_options!
          @html_options = options[:html_options] || {}
          options.delete(:html_options)
          @html_options[:style] = '' unless @html_options[:style]
          @html_options[:style] << 'visibility:hidden;'
          @html_options[:id] = options[:id] if options[:id]
          @html_options[:preload] = options[:preload] if options[:preload]
          @html_options[:url] = options[:url] if options[:url]
          if @html_options[:class]
            @html_options[:class] << " sauceDialog"
          else
            @html_options[:class] = "sauceDialog"
          end
          @template = args.shift
          options.replace(options[:options] || {})
          @dialog_options = {
            :auto_open => false
          }.merge(options)
        end
        
        def html_options
          @html_options.merge!({:dialogOptions => "#{map_options(@dialog_options).to_json}"})
        end
        
        
        private
        
        def map_options(options)
          option_map = {
            :auto_open => "autoOpen",
            :bgiframe => "bgiframe",
            :buttons => "buttons",
            :close_on_escape => "closeOnEscape",
            :dialog_class => "dialogClass",
            :draggable => "draggable",
            :height => "height",
            :hide => "hide",
            :max_height => "maxHeight",
            :max_width => "maxWidth",
            :min_height => "minHeight",
            :min_width => "minWidth",
            :modal => "modal",
            :open => "open",
            :position => "position",
            :resizable => "resizable",
            :show => "show",
            :stack => "stack",
            :title => "title",
            :width => "width",
            :z_index => "zIndex"
          }
          mapped_options = {}
          options.each do |k,v|
            mapped_options[option_map[k]] = v
          end
          return mapped_options
        end
        
      end
      
      # creates a dialog box
      def ui_dialog(*args, &block)
        builder = UiDialogBuilder.new(self, *args)
        if block_given?
          concat(content_tag(:div, builder.html_options) { yield block })
        else
          content_tag(:div, '', builder.html_options)
        end
      end
      
      def ui_box(*args, &block)
        @ui_boxed = true # allows ui_form_for to render with ui_box
        options = args.extract_options!
        options[:width] = 400 unless options[:width]
        options[:height] = 100 unless options[:height]
        options[:title] = "Dialog" unless options[:title]
        options[:parent] = '' unless options[:parent]
        options[:style] = "width: #{options[:width]}px;"
        if options[:center]
          options[:parent] = "width: 100%;"
          options[:style] << " margin-left: auto; margin-right: auto;"
        end
        body = capture(&block)
        concat(render :partial => 'ui/ui_box', :locals => options)
        concat(body)
        concat(%q{
              </div>  
            </div>
          </div>
        })
      end
    end
    
  end
end
