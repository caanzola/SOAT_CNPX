Rails.application.routes.draw do
  get 'seguros/detail'
  resources :soatseguros
  resources :seguros
  resources :polizas
  resources :users
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
