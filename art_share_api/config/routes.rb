Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users
  get 'users/', to: 'users#index', as: 'users'  
  get 'users/', to: 'users#new', as: 'new_user'
  post 'users/', to: 'users#create', as: 'create_user'

  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  get 'users/:id', to: 'users#show', as: 'show_user'
  put 'users/:id', to: 'users#update', as: 'put_user'
  patch 'users/:id', to: 'users#update', as: 'patch_user'
  delete 'users/:id', to: 'users#destroy', as: 'delete_user'
end
