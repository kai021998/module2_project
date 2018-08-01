Rails.application.routes.draw do
  resources :publishers
  resources :issues
  resources :comics
  resources :users
  # get '/user/:id/edit-catalog' to: 'users#edit_catalog', as: 'edit_catalog'
  resources :sessions, only: [:new, :create, :destroy]
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
