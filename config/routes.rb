Rails.application.routes.draw do
  resources :resources
  resources :questions
  resources :lessons
  resources :code_modules
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/modules' => 'code_modules#index'
end
