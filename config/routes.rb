Rails.application.routes.draw do

  root 'menu#show'
  get  'menu/help'
  get  'menu/about'
  get 'menu/contact'
  get 'menu/store'
  get 'menu/history'
  get  '/signup',  to: 'users#new'
  resources :users
  resources :posts
end
