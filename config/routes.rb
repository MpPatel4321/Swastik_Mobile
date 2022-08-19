Rails.application.routes.draw do
  devise_for :user, :path => '', :path_names => { :sign_in => "users/sign_in", :sign_out => "users/sign_out" }
  root to: "bills#index"
  resources :bills
  resources :categories
  resources :companies
  resources :models
  get "set_companies", to: 'models#set_companies'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
