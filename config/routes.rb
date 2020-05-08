Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end
  resources :topics
  resources :resources
  resources :questions
  resources :lessons
  resources :code_modules
  # resources :sessions
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
