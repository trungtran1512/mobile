Rails.application.routes.draw do
  
  get 'menu/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :matches
  resources :yards
  resources :teams
  resources :users
end
