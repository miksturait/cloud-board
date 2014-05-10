Rails.application.routes.draw do
  root to: "sessions#new"
  
  # --- Boards & Collections ----
  resources :boards do
    resources :images, only: [:update, :destroy, :create]
  end

  resources :collections
  
  # --- Sesssions ---
  resources :sessions, only: [:create, :destroy]
  get "logout" => "sessions#destroy", as: :logout
  get "login" => "sessions#new",      as: :login
  
  # --- Users ---
  resources :users, except: :index
end
