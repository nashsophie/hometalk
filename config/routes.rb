CourseProject::Application.routes.draw do
  root to: "posts#index"
  
  resources :posts
  #post '/my_form',

end