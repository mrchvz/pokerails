Rails.application.routes.draw do
  root 'pokemon#index'
  get '/index' => 'pages#index'
  get '/show:id' => 'pages#show'
  
  resources :pokemon
  get '/pokemon/:id', to: 'pokemon#show'
  get '/pokemon', to: 'pokemon#index'
end
