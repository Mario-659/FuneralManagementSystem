Rails.application.routes.draw do
  resources :mourning_cards
  resources :funeral_service_orders
  resources :funerals
  resources :funeral_services
  resources :deceaseds
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
