Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :exams
  root 'home#index'
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get 'admin/exam/new'
  get 'home/sandbox'

  # match ':controller(/:action(/:id(.:format)))', :via => :get


end
