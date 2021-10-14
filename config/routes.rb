Rails.application.routes.draw do
  get 'carts/show'
  get 'top/main'
  root 'top#main'
#  root 'products#index'
  resources :products
end
