Rails.application.routes.draw do
  devise_for :users
  resources :players
  resources :adventures
  root 'site#index'
end
