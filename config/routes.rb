Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
    root to: 'tasks#index'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup', to: 'users#new'
    resources :users, only: [:index, :show, :new, :create]
    resources :tasks
    resources :kadai_tasklists, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
