Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  # post 'prototypes/:id' => 'prototypes#show'
  # get 'user/:id' => 'users#show'
  # patch 'prototypes/:id/edit' => 'prototypes#edit'
  # post 'prototypes/:id/edit' => 'prototypes#edit'
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
