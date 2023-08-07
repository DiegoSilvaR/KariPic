Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  resources :photos do
    resources :comments, only: :create
  end
  resources :comments

  # Devise routes should be declared before resources :people
  devise_for :people, controllers: {

    registrations: 'people/registrations'
  }



  resources :people
end
