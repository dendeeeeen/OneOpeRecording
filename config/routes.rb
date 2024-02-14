Rails.application.routes.draw do
  root "static_pages#home"

  resources :users
  get    "/record/:id/edit",  to: "users#edit_record",    as: 'edit_record'
  get    "/record/:id",       to: "users#show_record",    as: 'record'
  patch  "/record/:id",       to: "users#update_record",  as: 'update_record'

  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
