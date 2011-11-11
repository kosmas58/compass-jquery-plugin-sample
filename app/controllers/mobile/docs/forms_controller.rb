class Mobile::Docs::FormsController < ApplicationController
  layout 'mobile'

  protect_from_forgery

  def sample_response
    @shipping = params[:shipping]
  end

  def sample_selfsubmit
    @gender = params[:gender]
  end
end
