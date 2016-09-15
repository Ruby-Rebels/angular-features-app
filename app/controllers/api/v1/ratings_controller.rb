class Api::V1::RatingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @frameworks = JsFramework.all
  end

  def create
    rating = Rating.find_by(user_id: current_user.id, js_framework_id: params[:framework_id])
    if rating
      rating.update(rate: params[:rate])
    else
      Rating.create(
        user_id: current_user.id,
        js_framework_id: params[:framework_id],
        rate: params[:rate]
      )
    end
    @frameworks = JsFramework.all
    @framework = JsFramework.find(params[:framework_id])
    render 'show'
  end
end
