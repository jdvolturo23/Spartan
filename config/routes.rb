Rails.application.routes.draw do
  get 'users/new'

  get 'pages/home'

  get 'pages/about'

  get 'pages/help'

  get 'pages/contact'

  get 'pages/jobs'

  get 'pages/events'

  get 'pages/new_events'

  get 'pages/featured_users'

  get 'pages/new_users'

  get 'pages/career'

  get 'pages/faq'

  root 'application#hello'
end
