Rails.application.routes.draw do
  root "servers#index"
  
  resources :servers
end
