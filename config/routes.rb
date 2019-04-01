Rails.application.routes.draw do
  devise_for :admins 
  get  '/home',    to: 'static_pages#home'
  root "static_pages#home"
  
  get 'static_pages/home'
  get 'static_pages/signup'
  get  '/signup',  to: 'customers#new'
  post '/signup',  to: 'customer#create'
  get  '/login', to: 'devise/sessions#new'
  get  '/login', to: 'devise/sessions#create'
  get 'admin/home'
  

  resources :bookings
  resources :cleaners
  resources :customers
end
