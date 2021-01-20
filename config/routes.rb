Rails.application.routes.draw do

  root "pages#index"
  get 'pages/index', to: 'pages#index'

  resources :tariflers
end
