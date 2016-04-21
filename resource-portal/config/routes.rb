Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'categories#homepage'

  get 'admin' => 'resources#admin'

  post 'modify_status', to:  'resources#modify_status'

  resources :resources # Creates get, post, delete mappings for resources controller
  resources :categories
  resources :users, :only => [:index, :show, :destroy]

end
