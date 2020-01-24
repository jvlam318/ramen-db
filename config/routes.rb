Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/recipes', to:'pages#recipes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ramen_recipes
  resources :component_recipes
end
