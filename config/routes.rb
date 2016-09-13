Rails.application.routes.draw do
  devise_for :users

  get '/' => 'welcome#home'
  get '/frameworks' => 'js_frameworks#index'
end
