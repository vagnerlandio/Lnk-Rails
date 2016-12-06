Rails.application.routes.draw do

  resources :links
  root 'home#index'

  get ':slug' => 'link#show'

  # get 'link/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
