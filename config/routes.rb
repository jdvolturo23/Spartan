Rails.application.routes.draw do

  get 'pages/home'

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  root 'pages#home'
#  get '/new', to: 'pages#new'
  get   '/about', to: 'pages#about'
  get   '/help',    to:  'pages#help'
  get   '/contact', to:  'pages#contact'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

end
