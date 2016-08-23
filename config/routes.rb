Rails.application.routes.draw do

  root to: 'vacancies#index'
  resources :vacancies, only: [:index, :show] do 
    resources :cvfiles, only: [:create]
  end
  resources :companies, only: [:index, :show]
  resources :cvfiles, only: [:create]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
