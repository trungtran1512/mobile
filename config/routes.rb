Rails.application.routes.draw do
  
  resources :posts
  root 'menu#show'
  resources :matches
  resources :yards
  resources :teams
  resources :users
  resources :posts
end
