Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Obtener todos los demas de una materia  
  get 'topics/:idSubject', to: 'topics#index'
  #Obtener todas las materias
  get 'subjects', to: 'subjects#index'

  #Ruta para obtener tutores de un tema especifico
  get 'topics/tutors/:idTopic', to: 'topics#tutors'
  get 'tutors/:idTutor/courses/:idTopic', to: 'courses#show'
  post 'tutors/:idTutor/courses', to: 'courses#create'
  post 'students/:idStudent/courses/:idCourse', to: 'courses#register'
  post 'students', to: 'students#create'
  get 'students/:idStudent', to: 'students#show'
  post 'subject/:idSubject/topics', to: 'topics#create'
  post 'tutors', to: 'tutors#create'


end
