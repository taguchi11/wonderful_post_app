Rails.application.routes.draw do
  devise_for :teachers
  devise_for :users, controllers: {
    registrations:  'users/registrations'
  }
  resources :articles
  resources :sample_articles
  root to:'articles#index'
end
