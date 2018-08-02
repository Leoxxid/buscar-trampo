Rails.application.routes.draw do
  get 'jobs/index'
  get 'jobs/show/:id', to: 'jobs#show'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  root to: 'pages#home'
end
