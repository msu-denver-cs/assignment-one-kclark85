Rails.application.routes.draw do
  resources :parts
  resources :cars
  resources :makes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end