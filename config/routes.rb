Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :pokemons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pokemons#index'
end
