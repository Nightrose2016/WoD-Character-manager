Rails.application.routes.draw do

  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  root to: 'application#welcome'


  resources :worlds, only: [:create, :edit, :update, :index, :show, :new] do 
    resources :characters, only: [:index, :show, :create, :new, :edit]
  end
  resources :characters, only: [:new, :create, :edit, :index, :show, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
