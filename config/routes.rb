Rails.application.routes.draw do
  resources :reservations
  resources :cabin_reservations
  resources :room_reservations
  resources :menu_reservations
  resources :bathroom_reservations
  resources :cabins
  resources :rooms
  resources :menus
  resources :bathrooms
  resources :campings
  resources :states
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
