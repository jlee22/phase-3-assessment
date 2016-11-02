Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pet#index'

  resources :pet, only: :index do
    resources :toys
  end

  get '/pets/all', to: "pets#index"

end
