Rails.application.routes.draw do

  root to: 'tops#index'
  resources :pokemons, only: [:new, :create, :edit, :update, :destroy]
  resources :parties, only: [:index, :new, :create, :edit, :update, :destroy]

end
