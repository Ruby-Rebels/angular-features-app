class Api::V1::JsFrameworksController < ApplicationController
  def index
    @js_frameworks = JsFramework.all
    @favorites = current_user.js_frameworks
  end
end
