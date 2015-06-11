Rails.application.routes.draw do
  resources :in_comings
  root to: 'visitors#index'
  devise_for :users
end
