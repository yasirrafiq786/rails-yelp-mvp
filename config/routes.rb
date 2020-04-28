Rails.application.routes.draw do
  get 'restaurant/name:string'
  get 'restaurant/address:string'
  get 'restaurant/phone_number:integer'
  get 'restaurant/category:string'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants
end
