Rails.application.routes.draw do

	root 'homes#index'

resources :authers
resources :books

resources :physicians
resources :appointments
resources :patients

resources :acounts
resources :supliers





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
