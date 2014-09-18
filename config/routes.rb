Rails.application.routes.draw do
  devise_for :users
  resources :players
  resources :adventures
  resources :npcs

  root 'site#index'
end
