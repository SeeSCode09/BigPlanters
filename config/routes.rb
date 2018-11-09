Rails.application.routes.draw do
  root 'product_groups#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :about_us, only: [:index]
  resources :concrete_planters, only: [:index, :new, :show, :create, :update, :destroy, :edit]
  resources :fiberglass_planters, only: [:index, :new, :show, :create, :update, :destroy, :edit]
  resources :plastic_planters, only: [:index, :new, :show, :create, :update, :destroy, :edit]
  resources :metal_planters, only: [:index, :new, :show, :create, :update, :destroy, :edit]
  resources :self_watering_planters, only: [:index, :new, :show, :create, :update, :destroy, :edit]
  resources :new_products, only: [:index, :new, :show, :create, :update, :destroy, :edit]


  resources :product_groups, only: [:index, :show]
  resources :customers, only: [:index, :new, :show, :create, :update, :destroy, :edit]
  resources :service_areas, only: [:index, :new, :show, :create, :update, :destroy, :edit]


end
