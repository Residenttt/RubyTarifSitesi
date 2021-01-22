Rails.application.routes.draw do

  root "pages#index"
  get 'pages/index', to: 'pages#index'

  resources :tariflers

  get '/register', to: 'users#new'
  resources :users, except: [:new]
end
