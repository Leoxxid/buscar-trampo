Rails.application.routes.draw do
  get 'jobs/show'
  get 'jobs/index'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  root to: 'pages#home'
end
