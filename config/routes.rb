Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  root to: 'welcome#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :invites do
    resources :comments, only: [:index, :create]
  end

  resources :users, path: :account do
    collection do
      get :profile, :edit
    end
  end


end
