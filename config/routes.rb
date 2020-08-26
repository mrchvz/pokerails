Rails.application.routes.draw do
  root 'pokemon#index'
  resources(:pokemon, { only: [:show, :index], param: :name })
end
