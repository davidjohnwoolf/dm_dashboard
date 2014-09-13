Rails.application.routes.draw do
  devise_for :users
  resources :players
  root 'site#index'
end
