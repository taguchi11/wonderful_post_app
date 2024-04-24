Rails.application.routes.draw do
  resources :articles
  resources :sample_articles
  root to:'articles#index'
end
