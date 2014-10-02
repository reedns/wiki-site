Rails.application.routes.draw do
  root 'pages#index'

  devise_for :users

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'logout', to: 'devise/sessions#destroy'
    get 'signup', to: 'devise/registrations#new'
  end

  resources :pages
  resources :users, only: [:show]
end
