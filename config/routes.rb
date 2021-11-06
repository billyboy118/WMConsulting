Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home/index"  
  root to: "home#index"

  resources :contact, only: [:create, :index]
  resources :resources
end
