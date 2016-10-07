Rails.application.routes.draw do

  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :users
  resources :posts
  resources :categories
  get 'about' => 'pages#about', as: :about
  get 'service' => 'pages#service', as: :service
  get 'faq' => 'pages#faq', as: :faq
  get 'terms' => 'pages#terms', as: :terms
  get 'gallery' => 'pages#gallery', as: :gallery

  root 'pages#index'

end
