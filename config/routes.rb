require 'constraints/administrator'

Rails.application.routes.draw do
  root to: 'users#index'
  devise_for :users, path: 'sessions'

  concern :auditable do
    resources :versions, only: :index
  end

  namespace :admin, constraints: Constraints::Administrator.new do
    resources :users, concerns: [:auditable]
    resources :settings, except: %i[create destroy], concerns: [:auditable]
  end

  resources :users, except: :destroy
end
