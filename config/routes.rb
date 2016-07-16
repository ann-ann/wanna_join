Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  root to: 'welcome#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users
end
