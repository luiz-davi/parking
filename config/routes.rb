Rails.application.routes.draw do
  root "vagas#index"
  devise_for :users

  resources :sangria, only: [:create, :index, :show, :new, :destroy]
  resources :debites, only: [:create, :index, :show, :new, :destroy]
  resources :locacaos
  resources :vagas
  resources :caixas
  resources :estacionamentos, only: [:show, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
