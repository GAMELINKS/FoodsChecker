Rails.application.routes.draw do

  resources :foods, :placetypes, :foodtypes, :counttypes, :counts do
    collection {post :import}
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'foods#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
