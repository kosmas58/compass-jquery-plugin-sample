module SecretSauce
  module Helpers
    
    module UiFormHelper
  
        class UiFormBuilder < ActionView::Helpers::FormBuilder

          def submit(value="Submit", options={})
            options = {:id => "#{object_name}_submit"}.merge(options)
            if options[:class]
              options[:class] << " sauceSubmit"
            else
              options[:class] = "sauceSubmit"
            end
            @template.submit_tag(value, options)
          end
          
          def date_select(method, options = {}, html_options = {})
            if html_options[:class]
              html_options[:class] << " sauceDate"
            else
              html_options[:class] = "sauceDate"
            end
            text_field(method, html_options.merge(:dateOptions => map_date_options(options).to_json))
          end
          
          def text_field(method, options = {})
            if options[:class]
              options[:class] << " text ui-widget-content ui-corner-all"
            else
              options[:class] = "text ui-widget-content ui-corner-all"
            end
            super(method, options)
          end
          
          def password_field(method, options = {})
            if options[:class]
              options[:class] << " text ui-widget-content ui-corner-all"
            else
              options[:class] = "text ui-widget-content ui-corner-all"
            end
            super(method, options)
          end
          
          def error_messages
            @template.error_messages_for(object_name)
          end
          
          
          private
          
          def map_date_options(options)
            option_map = {
              :alternate_field => "altField",
              :alternate_format => "altFormat",
              :append_text => "appendText",
              :button_image => "buttonImage",
              :button_image_only => "buttonImageOnly",
              :button_text => "buttonText",
              :change_month => "changeMonth",
              :change_year => "changeYear",
              :close_text => "closeText",
              :constraint_input => "constraintInput",
              :current_text => "currentText",
              :date_format => "dateFormat",
              :day_names => "dayNames",
              :day_names_min => "dayNamesMin",
              :day_names_short => "dayNamesShort",
              :default_date => "defaultDate",
              :duration => "duration",
              :first_day => "firstDay",
              :goto_current => "gotoCurrent",
              :hide_if_no_prev_next => "hideIfNoPrevNext",
              :is_rtl => "isRTL",
              :min_date => "minDate",
              :max_date => "maxDate",
              :month_name => "monthNames",
              :month_names_short => "monthNamesShort",
              :navigation_as_date_format => "navigationAsDateFormat",
              :next_text => "nextText",
              :number_of_months => "numberOfMonths",
              :previous_text => "prevText",
              :short_year_cutoff => "shortYearCutoff",
              :show_anim => "showAnim",
              :show_button_panel => "showButtonPanel",
              :show_current_at_pos => "showCurrentAtPos",
              :show_month_after_year => "showMonthAfterYear",
              :show_on => "showOn",
              :show_options => "showOptions",
              :show_other_months => "showOtherMonths",
              :step_months => "showStepMonths",
              :year_range => "yearRange"
            }
            mapped_options = {}
            options.each do |k,v|
              mapped_options[option_map[k]] = v
            end
            return mapped_options
          end

        end

        # builds a form within a ui_static_dialog using UiFormBuilder in this case we are using a
        # custom version of form_for instead of the original to wrap jquery-ui components inside
        # of the form
        def ui_form_for(record_or_name_or_array, *args, &proc)
          options = args.extract_options!
          if options[:html]
            if options[:html][:class]
              options[:html][:class] << " sauceForm"
            else
              options[:html][:class] = "sauceForm"
            end
          else
            options[:html] = {:class => "sauceForm"}
          end
          form_for(record_or_name_or_array, options.merge(:builder => UiFormBuilder), &proc)
        end
  
        # render a button pane
         def ui_button_pane(&block)
           body = capture(&block)
           concat("<div class='ui-dialog-buttonpane ui-widget-content ui-helper-clearfix'>")
           body
           concat("</div>")
         end

         # render a submit tag themed with jquery ui
         def ui_submit_tag(value = "Save changes", options = {})
           if options[:class]
             options[:class] << " ui-state-default ui-corner-all"
           else
             options[:class] = "ui-state-default ui-corner-all"
           end
           submit_tag(value, options)
         end


         # render a dynamic tree. the options hash should include an entry
         # called levels which is an array of strings of names of all levels for
         # the tree.  options can also include the key
         # "include_top_level_add_link" taking true/false for whether there
         # should be an add link and delete Xs for items in the top level of the
         # tree.  data, if provided,  must be a hash that looks like this: 
         #
         #    data = {
         #      :ip_address_list => [{  
         #        :value => "123.123.123.123",   
         #        :sending_domain_list => [{     
         #          :value => "sd1.com",
         #          :content_domain_list => [      
         #            {:value => "cd1.com"},         
         #            {:value => "cd2.com"},         
         #            {:value => "cd3.com"}          
         #          ]},
         #          {:value => "sd2.com",          
         #           :content_domain_list => [      
         #            {:value => "cd4.com"},         
         #            {:value => "cd5.com"},         
         #            {:value => "cd6.com"}          
         #           ]}]
         #        },
         #        {:value => "234.234.234.234",  
         #         :sending_domain_list => [{     
         #           :value => "sd3.com",           
         #           :content_domain_list => [      
         #             {:value => "cd7.com"},         
         #             {:value => "cd8.com"}          
         #           ]}]
         #         }
         #       ]
         #    }
         #
         # in other words, each item is a hash that has a key "value" and one
         # named after the sublevel title with "_list" appended, which in turn
         # contains more items of the same sort.  note that the very top of the
         # data hash is an entry whose key is the top-level name with "_list"
         # appended, and whose value is an array of top-level items.
         def ui_dyntree(options, data={}, html_options={})
           dyntree_opts = {
             :title => 'Dynamic Tree',
             :width => 400,
             :height => 300
           }.merge(options)

           html_options[:class] = (html_options.fetch(:class, "") + " sauceDynTree").strip
           html_options[:sauceDynTreeOptions] = dyntree_opts.to_json

           if !(data.nil? || data.empty?)
             html_options[:sauceDynTreeData] = data.to_json
           end
           content_tag(:div, '', html_options)
         end


         def error_messages_for(*params)
           render :partial => "ui/ui_form_error_messages", :locals => {:messages => super(*params) }
         end
         
       end
       
   
   end
 end
      
      
