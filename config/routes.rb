Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  # devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}
  #   delete '/users/sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
  #
  # devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}
  # devise_scope :users do
  #   delete '/users/sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end


  resources :blogs, only: [:index, :new, :create, :edit, :update, :destroy]

  root 'blogs#index'
end
