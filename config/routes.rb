Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: :create
  end
  resources :reviews, only: :destroy
  root to: "restaurants#index"
end
