Rails.application.routes.draw do

  root to: 'tops#index'
  resources :parties, only: [:index, :new, :create, :edit, :update, :destroy]

end
