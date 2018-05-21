Rails.application.routes.draw do
  resources :teachers
  resources :students
  resources :cohorts
  resources :courses
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
