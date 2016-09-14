class CommentsController < ApplicationController
  def index
    @frameworks = JsFramework.all
  end
end
