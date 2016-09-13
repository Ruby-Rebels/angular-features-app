class Api::V1::FavoritesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    if params[:favorite] == 1
      Favorite.create(user_id: current_user.id, js_framework_id: params[:framework_id])
      render json: {success: "Framework favorited!"}
    else
      favorite = Favorite.find_by(user_id: current_user.id, js_framework_id: params[:framework_id])
      favorite.destroy
      render json: {success: "Framework removed from favorites!"}
    end
  end
end
