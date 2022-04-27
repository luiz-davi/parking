Rails.application.routes.draw do
  root "vagas#index"
  resources :locacaos
  resources :vagas
  resources :caixas
  resources :estacionamentos, only: [:show, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
