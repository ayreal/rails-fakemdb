Rails.application.routes.draw do
  resources :networks, only: [:index]
  resources :show, only: [:create]
  resources :characters, only: [:show, :create, :edit, :update, :destroy]
  resources :actors, only: [:index,:show,:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
