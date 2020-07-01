Rails.application.routes.draw do
  get 'rooms/show'
  root to: 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show, :edit, :update]
  resources :relationships, only: [:create, :destroy]

  resources :conversations do
    resources :messages
  end
end
