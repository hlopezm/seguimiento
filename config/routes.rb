Rails.application.routes.draw do
  resources :categories
  resources :parties
  resources :years
  resources :elections
  devise_for :users
  resources :reports
  resources :cities
  resources :federals
  resources :locals
  resources :elections
  resources :results

  root to: 'reports#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
