 Rails.application.routes.draw do

  root to: 'home#index'

  devise_for :users
  resources :users
  resources :pages
  get '/:permalink', :to => 'pages#show'

end
