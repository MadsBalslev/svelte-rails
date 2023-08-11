Rails.application.routes.draw do
  root 'static#home'
  # devise routes
  devise_for :users, skip: [ :sessions, :passwords, :registrations ]
  as :user do
    get 'login', to: 'users/sessions#new', as: :new_user_session
    post 'login', to: 'users/sessions#create', as: :user_session
    match 'logout', to: 'users/sessions#destroy', as: :destroy_user_session, via: Devise.mappings[:user].sign_out_via
    get 'signup', to: 'users/registrations#new', as: :new_user_registration
    post 'signup', to: 'users/registrations#create', as: :user_registration
  end

  # inertia routes
  resources :bank_accounts, path: 'accounts', only: %i[index new create]
end
