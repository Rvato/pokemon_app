Rails.application.routes.draw do

  root to: 'tops#index'

  resources :parties, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :pokemons, only: [:new, :create]
  end

end
