class JsFrameworksController < ApplicationController
  def index
  end

  def show
    @framework = JsFramework.find_by(id: params[:id])
  end
end
