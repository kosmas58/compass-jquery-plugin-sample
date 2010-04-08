class Jqtouch::DemoController < ApplicationController
  layout 'jqt_jqt'
  
  def ajax_post
    @theaters = ["Los Gatos Cinema","Cinelux Plaza Theatre","Camera 7"];
    @movies   = ["Transformers","Knocked Up","Live Free Die Hard"];
    @title    = "-";
#    if (params[:title]]) 
#      $title = "Zip " . $_POST['zip'];
#    else 
#      $title = $_POST['movie'];
#    end
  end
  
end
