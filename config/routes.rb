# frozen_string_literal: true

Rails.application.routes.draw do
  resources :previews
  resources :reservations
  resources :cabins
  resources :rooms
  resources :menus
  resources :bathrooms
  resources :campings
  resources :states
  devise_for :users

  # pongo esta ruta solo por el primer commit hasta que hagamos las vistas de bienvenida
  # root "reservations#index"
  root 'reservations#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
