class Jqtouch::DemoController < ApplicationController
  layout 'jqt_jqt'

  protect_from_forgery

  def ajax_post
    @theaters = ["Los Gatos Cinema", "Cinelux Plaza Theatre", "Camera 7"];
    @movies = ["Transformers", "Knocked Up", "Live Free Die Hard"];
    @title = "-";
    if params[:zip].blank?
      @title = "Movie"
      @zip = false
    else
      @title = "Zip #{params[:zip]}"
      @zip = true
    end

    #engine = Haml::Engine.new(File.read(File.join(::Rails.root.to_s, 'app/views/jqtouch/demo/_ajax.html.haml')))

    render(:partial => "ajax_post_b")
  end
end
