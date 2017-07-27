Rails.application.routes.draw do
  root 'home#index'

  resources :stats

  resource :hero

  resource :searches

  resource :details

end
