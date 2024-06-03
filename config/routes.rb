Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :sample_articles
  root to:'articles#index'
end
