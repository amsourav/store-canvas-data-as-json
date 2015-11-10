Rails.application.routes.draw do
  mathjax 'mathjax'
  resources :submissions do
  	resources :annotations
  end
  get 'home/index'
  root 'home#index'
end
