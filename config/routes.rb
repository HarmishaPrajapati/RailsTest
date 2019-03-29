Rails.application.routes.draw do
  get  '/home',    to: 'static_pages#home'
  root "static_pages#home"
  
  get 'static_pages/home'
  get 'static_pages/signup'
  get  '/signup',  to: 'customers#new'
  post '/signup',  to: 'customer#create'
  
 
  devise_for :admins  
  resources :bookings
  resources :cleaners
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
