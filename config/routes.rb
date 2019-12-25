Rails.application.routes.draw do
  resources :interests
  resources :user_interestts
  devise_for :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # root to: "home#index"
end
