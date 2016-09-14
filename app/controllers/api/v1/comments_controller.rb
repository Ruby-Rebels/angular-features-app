class Api::V1::CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    comment = Comment.new(
      comment_text: params[:comment_text],
      js_framework_id: params[:framework_id],
      user_id: current_user.id
    )
    if comment.save
      @framework = JsFramework.find_by(id: params[:framework_id])
      render 'create'
    else
      render json: { error: "Comment can't be blank" }, status: 422
    end
  end
end
