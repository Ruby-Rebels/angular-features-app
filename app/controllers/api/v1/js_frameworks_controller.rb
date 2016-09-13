class Api::V1::JsFrameworksController < ApplicationController
  def index
    @js_frameworks = JsFramework.all
  end
end
