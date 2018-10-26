Rails.application.routes.draw do
  root 'product_groups#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :about_us, only: [:index]
  resources :concrete_planters, only: [:index, :show]
  resources :fiberglass_planters, only: [:index, :show]
  resources :plastic_planters, only: [:index, :show]
  resources :metal_planters, only: [:index, :show]


  resources :product_groups, only: [:index, :show]
  resources :customers, only: [:index, :new, :show, :create]


end
