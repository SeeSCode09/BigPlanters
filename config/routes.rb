Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :homes, only: [:index, :show]
  resources :concrete_planters, only: [:index, :show]
  resources :fiberglass_planters, only: [:index, :show]
  resources :plastic_planters, only: [:index, :show]
  resources :metal_planters, only: [:index, :show]
  resources :self_watering_planters, only: [:index, :show]
  resources :about_us, only: [:index]



end
