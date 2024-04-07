Rails.application.routes.draw do
  resources :articles
  resources :sample_articles
  # get "posts/:id" => "posts#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
