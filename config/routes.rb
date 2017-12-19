Rails.application.routes.draw do
mount Attachinary::Engine => "/attachinary"
  devise_for :users

  resources :agencies, only: :show

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
