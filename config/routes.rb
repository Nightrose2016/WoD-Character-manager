Rails.application.routes.draw do
  get 'worlds/show'
  get 'worlds/new'
  get 'worlds/index'
  get 'worlds/edit'
  get 'worlds/create'
  get 'worlds/update'
  get 'worlds/world_params'
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
