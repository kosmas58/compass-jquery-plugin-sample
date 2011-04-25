class Mobile::Tuts::NewClaimController < ApplicationController
  layout 'mobile'

  protect_from_forgery

  def request_processor
    sleep(4);
    render :text => 'FTREIK12345678'
  end
end
