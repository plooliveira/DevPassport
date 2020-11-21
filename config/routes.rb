Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :reviewers, only: [:index, :show]

  get     'tests',                to: 'tests#index'
  get     'tests/new',            to: 'tests#new',            as: 'test'
  post    'tests',                to: 'tests#creat'
  get     'tests/:id/edit',       to: 'tests#edit',           as: 'edit_test'
  patch   'tests/:id',            to: 'tests#update'
  delete  'tests/:id',            to: 'tests#destroy'

  get     '/visas/',              to: "visas#index"
  get     '/visas/:id',           to: "visas#show",           as: "visa"

  get     '/stamps/',             to: "stamps#index"
  post    '/stamps/',             to: "stamps#create",        as: "stamp_create"


  get     '/stamps/:id/payment',  to: "stamps#payment",       as: "payment"
  get     '/stamps/:id/',         to: "stamps#show",          as: "stamp_show"
  get     '/stamps/:id/edit',     to: "stamps#edit",          as: "edit_stamp"
  post    '/stamps/:id/',         to: "stamps#check_payment", as: "check_payment"

end
