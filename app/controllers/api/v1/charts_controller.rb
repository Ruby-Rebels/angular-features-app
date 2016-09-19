class Api::V1::ChartsController < ApplicationController
  def index
    @frameworks = JsFramework.all
  end
end
