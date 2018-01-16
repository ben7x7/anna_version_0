Rails.application.routes.draw do
mount Attachinary::Engine => "/attachinary"
  devise_for :users

  resources :agencies, only: :show do
    resources :services, only: :index
  end

  resources :services, only: :show do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :show, :create]


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
