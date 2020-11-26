Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :reviewers, only: [:index, :show]

  resources :tests, except: [:show]

  get '/dashboard/', to: "tests#dashboard"

  get     '/visas/',              to: "visas#index"
  get     '/visas/:id',           to: "visas#show",           as: "visa"

  get     '/stamps/',             to: "stamps#index"
  post    '/stamps/',             to: "stamps#create",        as: "stamp_create"
  get     '/stamps/:id/edit',     to: "stamps#edit",          as: "edit_stamp"
  get     '/stamps/:id/payment',  to: "stamps#payment",       as: "payment"
  post    '/stamps/:id/',         to: "stamps#check_payment", as: "check_payment"
  get     '/stamps/:id/',         to: "stamps#show",          as: "stamp"

end
