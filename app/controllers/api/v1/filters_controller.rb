class Api::V1::FiltersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @frameworks = JsFramework.all
  end

  def search
    if params[:ratings].nil? || params[:ratings].empty?
      @frameworks = JsFramework.all
    else
      @frameworks = JsFramework.joins(:ratings).where(ratings: {rate: params[:ratings].split(",")}).distinct
    end
    render 'index'
  end
end
