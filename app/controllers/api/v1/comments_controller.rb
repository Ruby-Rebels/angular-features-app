class Api::V1::CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    comment = Comment.new(
      comment_text: params[:comment_text],
      js_framework_id: params[:framework_id],
      user_id: current_user.id
    )
    if comment.save
      @framework = comment.js_framework
      render 'create'
    else
      render json: { error: "Comment can't be blank" }, status: 422
    end
  end

  def update
    comment = Comment.find_by(id: params[:id])
    if comment.update(comment_text: params[:comment_text])
      @framework = comment.js_framework
      render 'create'
    else
      render json: {error: "Comment can't be blank"}
    end
  end
end
