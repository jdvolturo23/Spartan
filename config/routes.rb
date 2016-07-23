Rails.application.routes.draw do

  root 'pages#home'

  get '/new', to: 'pages#new'
  get '/about', to: 'pages#about'
  get '/help', to: 'pages#help'
  get '/contact', to: 'pages#contact'
  get '/jobs', to: 'pages#jobs'
  get '/events', to: 'pages#events'
  get '/new_events', to: 'pages#new_events'
  get '/featured_users', to: 'pages#featured_users'
  get '/new_users', to: 'pages#new_users'
  get '/career', to: 'pages#career'
  get '/faq', to: 'pages#faq'
  get  '/signup',  to: 'users#new'

end
