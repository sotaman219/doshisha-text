Rails.application.routes.draw do

  root "users#show"

  devise_for :users

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  resources :user, only: [:show]  do
    resources :text_books
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
