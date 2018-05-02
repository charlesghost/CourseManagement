
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :streams, :disciplines, :cohorts

  root 'cohorts#index'

  get "disciplines#index", to: "disciplines#index"


  get 'streams/new', to: 'streams#new'
  get 'cohorts/new', to: 'cohorts#new'
  get "disciplines/new", to: "disciplines#new"



  get 'disciplines/:id', to: "disciplines#show"


end
