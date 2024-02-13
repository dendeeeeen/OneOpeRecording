Rails.application.routes.draw do
  root "static_pages#home"

  resources :users
  get    "/record/:id", to: "users#record", as: 'record'

  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
