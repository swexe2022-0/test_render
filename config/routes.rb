Rails.application.routes.draw do
  get 'top/main'
  root 'top#main'
#  root 'products#index'
  resources :products
end
