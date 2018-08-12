Rails.application.routes.draw do
  devise_for :users

  resources :reports, only: [:index, :show]

  root 'reports#index'
end
