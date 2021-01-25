Rails.application.routes.draw do

  root "pages#index"
  get 'pages/index', to: 'pages#index'

  resources :tariflers do
    resources :yorumlars, only: [:create]
  end

  get '/register', to: 'users#new'
  resources :users, except: [:new]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :malzemes, except: [:destroy]
end
