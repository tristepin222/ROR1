Rails.application.routes.draw do
  resources :lessons do
    member  do
      post :archive
    end
  end
  
  resources :person_evaluate_exams
  resources :person_belongs_to_classrooms
  resources :classrooms
  resources :exams
  resources :subjects
  resources :person_have_exams, path: 'grades', only: [:create, :update, :destroy, :edit, :new, :show]

  resources :students, controller: 'people', type: 'Student'
  resources :teachers, controller: 'people', type: 'Teacher'
  resources :deans, controller: 'people', type: 'Dean'
  
  resources :people do
    resources :person_have_exams, path: 'grades' # /people/:person_id/grades/:id(.:format)
    member  do
      get :generate, to: 'report_card#generate', path: 'report_card/generate' # /people/:id/report_card/generate(.:format)
    end
  end

  devise_for :people, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret'}

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "welcome#index"
end
