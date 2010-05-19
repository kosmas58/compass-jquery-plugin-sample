require 'jquery/calendar'
require 'jical/helpers/ui_event_helper'

ActionView::Helpers::AssetTagHelper.register_javascript_expansion :calendar => ['jquery.calendar.min']

ActionView::Base.send :include, Jical::Helpers::UiEventHelper
