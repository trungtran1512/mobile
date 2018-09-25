Rails.application.routes.draw do

  root 'menu#show'
  resources :users
  resources :posts
end
