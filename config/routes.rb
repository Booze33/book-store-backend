Rails.application.routes.draw do
  # Devise routes for user authentication
  devise_for :users, controllers: { sessions: 'sessions' }

  # Doorkeeper routes for OAuth2 authentication
  use_doorkeeper do
    skip_controllers :applications, :authorized_applications, :authorizations
  end

  # Custom registration endpoint for creating users
  resources :registrations, only: [:create]

  # Define other custom routes for your app here, if needed

  # Defines the root path route ("/")
  # root "articles#index" (if you have a different root route)

end
