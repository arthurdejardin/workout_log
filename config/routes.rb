Rails.application.routes.draw do
  
  resources :workouts do
  	resources :exercices
  end
  root 'workouts#index'

end
