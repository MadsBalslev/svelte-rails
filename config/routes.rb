Rails.application.routes.draw do
  root 'static#home'
  # devise routes
  devise_for :users, skip: %i[sessions registrations], controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  as :user do
    get 'login', to: 'users/sessions#new', as: :new_user_session
    post 'login', to: 'users/sessions#create', as: :user_session
    match 'logout', to: 'users/sessions#destroy', as: :destroy_user_session, via: Devise.mappings[:user].sign_out_via
    get 'signup', to: 'users/registrations#new', as: :new_user_registration
    post 'signup', to: 'users/registrations#create', as: :user_registration
    post 'login/:provider', to: 'users/sessions#omniauth', as: :user_omniauth_authorize
  end

  # inertia routes
  resources :bank_accounts, path: 'dashboard', only: %i[index new create]

  resource :user, only: %i[show edit update]
end
