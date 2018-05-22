Rails.application.routes.draw do
  resources :student_cohorts
  resources :teacher_cohorts
  resources :teachers_cohorts
  resources :teachers
  resources :students
  resources :cohorts
  resources :courses
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
