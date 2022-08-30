Rails.application.routes.draw do
  devise_for :user, :path => '', :path_names => { :sign_in => "users/sign_in", :sign_out => "users/sign_out" }
  root to: "bills#index"
  resources :bills
  resources :categories
  resources :companies
  resources :models
  resources :imported_items
  resources :stocks, only: :index
  get "set_items", to: 'companies#set_items'
  get "set_price", to: 'companies#set_price'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
