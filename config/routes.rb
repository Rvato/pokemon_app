Rails.application.routes.draw do

  root to: 'tops#index'
  resources :pokemons, only: [:new, :create]
  resources :parties, only: [:index, :new, :create, :edit, :update, :destroy]

end
