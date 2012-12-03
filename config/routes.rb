CourseProject::Application.routes.draw do
  root to: "posts#index"
  
  resources :posts do
    resources :commentss
  end
end