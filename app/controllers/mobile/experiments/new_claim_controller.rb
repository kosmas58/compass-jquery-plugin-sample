class Mobile::Experiments::NewClaimController < ApplicationController
  layout 'mobile'

  protect_from_forgery

  def request_processor
    render(:text => 'FTREIK12345678')
  end

end
