Rails.application.routes.draw do

  devise_for :users
  get 'welcome/profile'
  get 'welcome/index'
  get 'welcome/about'
  get 'users/show'
  resources :welcome
  resources :users
  root to: 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
