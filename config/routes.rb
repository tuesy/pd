Rails.application.routes.draw do
  resources :exams
  root 'home#index'
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
end
