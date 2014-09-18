Rails.application.routes.draw do
  devise_for :users
  resources :players
  resources :adventures
  resources :npcs
  resources :locations

  root 'site#index'
end
