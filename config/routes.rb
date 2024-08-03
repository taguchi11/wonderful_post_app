Rails.application.routes.draw do
  # devise_for :teachers
  # devise_for :users, controllers: {
  #   registrations:  'users/registrations'
  # }
  devise_for :users
  resources :articles
  resources :sample_articles
  root to:'articles#index'
end
