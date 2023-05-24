Rails.application.routes.draw do
  resources :missions, only: :create
  resources :planets
  resources :scientists
end
