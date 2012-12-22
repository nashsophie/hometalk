CourseProject::Application.routes.draw do
  resources :posts
  resources :users, only: [:create]
  
  get 'register', to: 'users#new', as: 'register'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destory', as: 'logout'
  
  
  
  
  root to: "posts#index"
  resources :posts, only: [:show, :new, :create] do
    resources :comments, only: [:create] 
    resources :votes, only: [:create]
  end
end