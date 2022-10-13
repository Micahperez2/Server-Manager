Rails.application.routes.draw do
  root "home#index"
  get '/servers', to: 'servers#index'
  get '/drives', to: 'drives#index'

  resources :home
  resources :servers
  resources :drives
end
