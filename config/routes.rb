Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Sidekiq Web UI, only for admins.

  require "sidekiq/web"
  # Specify a route to access sidekiq gui dashboard
  # Only accessible if user is an admin
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
