class Api::V1::JsFrameworksController < ApplicationController
  def index
    @js_frameworks = JsFramework.all
    @favorites = current_user.js_frameworks
  end

  def show
    @framework = JsFramework.find_by(id: params[:id])
  end
end
