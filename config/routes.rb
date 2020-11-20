Rails.application.routes.draw do
  root "emails#index"
resources :books, only: [:create, :index, :destroy]
resources :emails, only: [:create, :index, :destroy, :show]
end
