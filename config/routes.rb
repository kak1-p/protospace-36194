Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  post 'prototypes/:id' => 'prototypes#show'
  get 'user/:id' => 'users#show'
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
