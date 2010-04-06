module SecretSauce
  module Helpers
    
    module UiMenuHelper
      class UiMenuBuilder
      end
    
      def ui_menu(&block)
        concat(render :partial => "ui/ui_widget.erb", :locals => {:sauce_type => "sauceMenu"})
        concat(capture(&block))
        concat("</div>")
      end
    end
  end
end