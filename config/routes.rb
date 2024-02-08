Rails.application.routes.draw do

  resources :person_learn_subjects
  resources :person_teach_subjects
  resources :person_evaluate_exams
  resources :person_have_exams
  resources :person_belongs_to_classrooms
  resources :classrooms
  resources :exams
  resources :subjects
  resources :people
  resources :localities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
