Rails.application.routes.draw do
  resources :counttypes
  resources :counts
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :foods
  resources :foodtypes
  resources :placetypes
  root 'foods#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
