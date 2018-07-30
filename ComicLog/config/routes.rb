Rails.application.routes.draw do
  resources :publishers
  resources :issues
  resources :comics
  resources :user_comics
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
