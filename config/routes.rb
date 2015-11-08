Rails.application.routes.draw do
  resources :submissions do
  	resources :annotations
  end
  get 'home/index'
  root 'home#index'
end
