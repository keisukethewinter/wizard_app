Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get 'addresses', to: 'users/registration#new_address'
    post 'addresses', to: 'users/registration#create_address'
  end

  root to: "home#index"
end
