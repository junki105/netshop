Rails.application.routes.draw do
  resources :categories, only: [:show]
  root to: "homes#show"
end
