Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get '/cashes/:id/undo', to: 'cashes#undo'
  resources :monthlies
  resources :costumers
  resources :cashes

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
