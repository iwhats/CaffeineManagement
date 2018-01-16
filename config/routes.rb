Rails.application.routes.draw do
  resources :drinks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => 'drinks#index'
  match '/index', to: 'drinks#index', via: [:get, :post]
  #match '/index',to: 'drinks#caffeinDattaSet',via:[:get,:post]
  match '/cafeMane', to: 'drinks#index', via: [:get, :post]
  match '/drinkLogDel', to: 'drinks#drinkLogDel', via: [:get, :post]
  match '/drinkLogSet', to: 'drinks#drinkLogSet', via: [:get, :post]
  match '/logOut',to: 'session#delete',via:[:get,:post]
  get '/auth/:provider/callback' => 'session#create'
end
