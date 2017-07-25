Rails.application.routes.draw do
  root 'home#index'

  resources :stats

  resource :searches, only: [:show]
end
