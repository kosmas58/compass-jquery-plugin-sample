# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def body_attributes
    {:class => body_class, :id => body_id}
  end

  def body_class
    @controller.controller_name.dasherize
  end

  def body_id
    "#{@controller.controller_name.dasherize}-#{@controller.action_name.dasherize}"
  end
   
  def options_for_select_with_class(container, selected = nil)
    return container if String === container

    container = container.to_a if Hash === container
    selected, disabled = extract_selected_and_disabled(selected)

    options_for_select = container.inject([]) do |options, element|
      text, value = option_text_and_value(element)
      selected_attribute = ' selected="selected"' if option_value_selected?(value, selected)
      disabled_attribute = ' disabled="disabled"' if disabled && option_value_selected?(value, disabled)
      options << %(<option class="#{html_escape(value.to_s)}" value="#{html_escape(value.to_s)}"#{selected_attribute}#{disabled_attribute}>#{html_escape(text.to_s)}</option>)
    end

    options_for_select.join("\n").html_safe
  end  
end
