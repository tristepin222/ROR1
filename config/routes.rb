Rails.application.routes.draw do
  resources :semester_has_exams
  resources :semesters
  resources :person_has_exams
  resources :exams
  resources :person_has_subjects
  resources :subjects
  resources :historics
  resources :people
  resources :localities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
