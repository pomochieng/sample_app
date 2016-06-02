Rails.application.routes.draw do
  get 'users/show'

  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'cv' => 'static_pages#cv'
  get 'signup' => 'users#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

