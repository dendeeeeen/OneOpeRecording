Rails.application.routes.draw do
  root "static_pages#home"

  resources :users
  get    "/records/:id/edit",  to: "users#edit_records",    as: 'edit_records'
  get    "/records/:id",       to: "users#show_records",    as: 'records'
  patch  "/records/:id",       to: "users#update_records",  as: 'update_records'

  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  resources :trophies, only: [:index]
  get    "/trophies/edit",  to: "trophies#edit",    as: 'edit_trophies'
  patch  "/trophies",       to: "trophies#update",  as: 'update_trophies'
end
