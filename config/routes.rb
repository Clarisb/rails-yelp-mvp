Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  get "restaurants", to: "restaurants#index"
  get "restaurants/:restaurant_id", to: "restaurants#show"
  get "restaurants", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
end
  # get "restaurants/:restaurant_id/reviews",     to: "reviews#index"
  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  # post "restaurants/:restaurant_id/reviews",    to: "reviews#create"
