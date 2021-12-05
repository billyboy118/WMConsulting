Rails.application.routes.draw do

  get 'code_resource/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home/index"  
  root to: "home#index"

  resources :contact, only: [:create, :index]
  resources :resources, only: [:index]
  resources :web_site, except: [:show]
  
end
