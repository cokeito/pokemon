Rails.application.routes.draw do
  
  resources :caughts, only: [:index, :create] do
  	member do 
  		get 'raise_level'
  	end

  end

  #creo recurso solo para la vista iindex del controller caughts

  #get 'catched/raise_level/:id', to: 'catched#raise_level', as: 'catched/raise_level'

  #devise_for :users
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :pokemons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pokemons#index'
end
