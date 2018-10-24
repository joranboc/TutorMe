Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students
  get 'topics/:idSubject', to: 'topics#index'
  get 'subjects', to: 'subjects#index'
  
  get 'topics/tutors/:idTopic', to: 'topics#tutors'
  get 'tutors/:idTutor/courses/:idTopic', to: 'courses#show'
  post 'tutors/:idTutor/courses', to: 'courses#create'
  post 'students/:idStudent/courses/:idCourse', to: 'courses#register'
  post 'students', to: 'students#create'
  get 'students/:idStudent', to: 'students#show'
end
