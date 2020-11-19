Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :reviewers, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/visas',         to: "visas#index"
  get '/visas/:id',     to: "visas#show", as: "visa"
end
