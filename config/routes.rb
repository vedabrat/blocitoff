Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  get 'welcome/show'
  get 'users/show'

  get 'welcome/about'
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
