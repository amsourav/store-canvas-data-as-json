Rails.application.routes.draw do
  devise_for :teachers
  mathjax 'mathjax'
  resources :submissions do
  	resources :annotations
  end
  get 'home/index'
  root 'home#index'
end
