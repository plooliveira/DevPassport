Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :reviewers, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/visas/',              to: "visas#index"
  get '/visas/:id',           to: "visas#show",     as: "visa"

  get '/stamps/',             to: "stamps#index"
  post '/stamps/',            to: "stamps#create",  as: "stamp_create"

  get '/stamps/:id/payment',  to: "stamps#payment", as: "payment"
  get '/stamps/:id/',         to: "stamps#show"

end
