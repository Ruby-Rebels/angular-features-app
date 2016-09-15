class Api::V1::RatingsController < ApplicationController
  def index
    @frameworks = JsFramework.all
  end
end
