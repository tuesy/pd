Rails.application.routes.draw do
  devise_for :users
  resources :exams
  root 'home#index'
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get 'home/test'
end
