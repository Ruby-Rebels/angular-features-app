Rails.application.routes.draw do
  devise_for :users

  get '/' => 'welcome#home'
  get '/frameworks' => 'js_frameworks#index'

  namespace :api do
    namespace :v1 do
      get '/frameworks' => 'js_frameworks#index'
    end
  end
end
