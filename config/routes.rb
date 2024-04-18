# config/routes.rb
Rails.application.routes.draw do
  resources :patients
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :doctors, only: [:index]


  root 'sessions#new'
end

