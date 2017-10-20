Rails.application.routes.draw do
  resources :networks
  resources :shows
  resources :characters
  resources :actors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
