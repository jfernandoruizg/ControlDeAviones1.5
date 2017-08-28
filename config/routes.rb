Rails.application.routes.draw do
  resources :avions
  devise_for :users
  get 'users/sign_out' => "devise/sessions#destroy"
  get 'administrador/index'

  #get 'home/index'
root :to => 'home#_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
