Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items, only: [:index, :show, :create, :new, :edit, :update, :destroy] do
    resources :bookings
  end

    get "profile", to: "profiles#dashboard"
end
