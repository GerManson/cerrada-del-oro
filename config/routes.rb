Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :reports, only: [:index, :show]

  root 'welcome#index'
end
