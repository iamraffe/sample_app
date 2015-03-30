Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  #get 'sessions/new'

  #get 'users/new'

#  get 'users/new'

  root 'static_pages#home'

  get 'programa' => 'static_pages#programa'

  get 'ponentes'   => 'static_pages#ponentes'
  
  get 'llegar' => 'static_pages#llegar'

  get 'condiciones'  => 'static_pages#condiciones'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'


  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
end
