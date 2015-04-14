Rails.application.routes.draw do
  
  devise_for :admins
  resources :posts do
  	resources :comments
  end
  root 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

end
