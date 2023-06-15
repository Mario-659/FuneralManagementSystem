Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'home', to: 'home#index'

  resources :funeral_service_orders
  resources :funerals
  resources :funeral_services
  resources :deceaseds
  resources :users

  resources :mourning_cards do
    member do
      get :show_pdf
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
