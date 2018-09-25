Rails.application.routes.draw do

  get 'sessions/new'
  root 'menu#show'
  get  '/help',    to: 'menu#help'
  get  '/about',    to: 'menu#about'
  get  '/contact',    to: 'menu#contact'
  get  '/store',    to: 'menu#store'
  get  '/history',    to: 'menu#history'
  get  '/sign_up',  to: 'users#new'
  post '/sign_up',  to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :posts
end
