Rails.application.routes.draw do
  root 'home#index'

  resources :docs, only: [:create, :show], path: '/'
end
