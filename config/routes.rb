Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :exams
  root 'home#index'
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

end
