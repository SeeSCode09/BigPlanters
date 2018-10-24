Rails.application.routes.draw do
  root 'product_groups#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :about_us, only: [:index]

  resources :product_groups, only: [:index, :show]



end
