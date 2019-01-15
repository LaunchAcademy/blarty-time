Rails.application.routes.draw do
  root 'parties#index'
  resources :parties, only: [:new, :create, :show] do
    resources :guests, only: [:create]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
