Rails.application.routes.draw do
  resources :categories, only: [:show]
  root to: "homes#show"

  namespace :users, module: :users do
    resource :registrations, only: [:new, :create], :path_names => { new: 'signup' }
    resource :sessions, only: [:new, :create], :path_names => { new: 'signin' } do
      get :signout, to: 'sessions#signout', as: :signout
    end
  end
end
