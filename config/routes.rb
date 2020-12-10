Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :tests

  get     '/company_dashboard/',  to: "dashboard#company"
  get     '/user_dashboard/',     to: "dashboard#user"
  get     '/profile/:id',          to: "dashboard#profile"

  get     '/visas/',              to: "visas#index"
  get     '/visas/:id',           to: "visas#show",           as: "visa"

  get     '/stamps/',             to: "stamps#index"
  post    '/stamps/',             to: "stamps#create",        as: "stamp_create"
  get     '/stamps/:id/payment',  to: "stamps#payment",       as: "payment"
  post    '/stamps/:id/',         to: "stamps#check_payment", as: "check_payment"
  get     '/stamps/:id/',         to: "stamps#show",          as: "stamp"
  post    '/stamps/:id/start',    to: "stamps#start_test",    as: "start_test"
  post    '/stamps/:id/finish',   to: "stamps#finish_test",   as: "finish_test"


end
