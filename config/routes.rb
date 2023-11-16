# frozen_string_literal: true

Rails.application.routes.draw do
  get 'donations/new'
  get 'donations/create'
  # root 'articles#index'
  # get "/articles", to: "articles#index"
  
  
  # get 'articles/index'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")

  

  root 'categories#index'

  # get "/articles/:id", to: "articles#show"

  # resources :articles do
  #   resources :comments
  # end

  # Rails.application.routes.draw do
  get 'donations/new'
  get 'donations/create'
  #   root "articles#index"
  #   resources :articles
  # end

  resources :categories do
    resources :articles do
      resources :comments
    end
  end


  resources :donations, only: [:new, :create]
end
