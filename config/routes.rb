Rails.application.routes.draw do
  resources :categories
  resources :products
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root 'home#index'
  get '/forms', to: 'home#forms'
  get '/users', to: 'home#users'
  get '/modals', to: 'home#modals'
  get '/signin', to: 'home#signin'
  get '/signup', to: 'home#signup'

  # Defines the root path route ("/")
  # root "posts#index"
end
