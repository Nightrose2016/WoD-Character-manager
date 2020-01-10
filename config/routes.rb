Rails.application.routes.draw do
  get 'characters/show'
  get 'characters/new'
  get 'characters/index'
  get 'characters/edit'
  get 'characters/create'
  get 'characters/update'
  get 'characters/charatacter_params'
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  root to: 'application#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
