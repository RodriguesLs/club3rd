Rails.application.routes.draw do
  get 'home/index'
  resources :monthlies
  resources :streets
  resources :costumers
  resources :cashes

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
