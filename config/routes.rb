Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :users
  resources :posts
  resources :categories
  get 'about' => 'pages#about', as: :about
  get 'service' => 'pages#service', as: :service
  get 'contact' => 'pages#contact', as: :contact
  get 'faq' => 'pages#faq', as: :faq
  get 'terms' => 'pages#terms', as: :terms

  root 'pages#index'

end
