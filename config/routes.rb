Rails.application.routes.draw do
  devise_for :users

  get '/' => 'welcome#home'
  get '/frameworks' => 'js_frameworks#index'
  get '/comments' => 'comments#index'
  get '/frameworks/:id' => 'js_frameworks#show'
  get '/ratings' => 'ratings#index'

  namespace :api do
    namespace :v1 do
      get '/frameworks' => 'js_frameworks#index'
      get '/frameworks/:id' => 'js_frameworks#show'
      post '/favorites' => 'favorites#create'
      post '/comments' => 'comments#create'
      patch '/comments/:id' => 'comments#update'
      get '/ratings' => 'ratings#index'
      post '/ratings' => 'ratings#create'

      get '/chatrooms/:id' => 'chatrooms#show'
      get '/messages' => 'messages#index'
      get '/messages/new' => 'messages#new'
      post '/messages' => 'messages#create'
    end
  end

  get '/chatrooms/new' => 'chatrooms#new'
  post '/chatrooms' => 'chatrooms#create'
  get '/chatrooms/:id' => 'chatrooms#show'


  mount ActionCable.server => '/cable'
end
