class Mobile::Docs::FormsController < ApplicationController
  layout 'mobile'

  protect_from_forgery

  def forms_sample_response
    @shipping = params[:shipping]
  end

  def forms_sample_selfsubmit
    @gender = params[:gender]
  end
end
