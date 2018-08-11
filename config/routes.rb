Rails.application.routes.draw do
  get 'welcome/index'

  resources :reports, only: [:index, :show]

  root 'welcome#index'
end
