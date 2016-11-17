Rails.application.routes.draw do
  get 'catched/index'
  get 'caughts/index'
  get 'catched/raise_level/:id', to: 'catched#raise_level', as: 'catched/raise_level'

  #devise_for :users
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :pokemons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pokemons#index'
end
