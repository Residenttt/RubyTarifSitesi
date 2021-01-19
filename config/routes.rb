Rails.application.routes.draw do

  root "pages#index"
  get 'pages/index', to: 'pages#index'

  get '/tariflers', to: 'tariflers#index'
end
