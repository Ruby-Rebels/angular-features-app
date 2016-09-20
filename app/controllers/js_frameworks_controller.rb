class JsFrameworksController < ApplicationController
  def index
  end

  def show
    @framework = JsFramework.find_by(id: params[:id])
  end

  def edit
    @framework = JsFramework.find_by(id: params[:id])
  end

  def update
    framework = JsFramework.find_by(id: params[:id])
    framework.update(
      author: params[:author],
      name: params[:name],
      source: params[:source],
      documentation: params[:documentation],
      photo: params[:photo]
    )
    redirect_to "/frameworks/#{framework.id}"
  end
end
