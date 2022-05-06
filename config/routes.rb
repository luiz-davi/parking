Rails.application.routes.draw do
  root "vagas#index"
  devise_for :users

  resources :sangria, only: [:create, :index, :show, :new, :destroy]
  resources :debites, only: [:create, :index, :show, :new, :destroy]
  resources :locacaos, only: [:create, :index, :new, :show] do
    post "/finalizar", to: "locacao#finalizar"
  end
  resources :vagas
  resources :caixas, only: [:show]
  resources :estacionamentos, only: [:show, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
