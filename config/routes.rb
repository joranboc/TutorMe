Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Obtener todos los temas de una materia  
  get 'topics/:idSubject', to: 'topics#index'
  #Obtener todas las materias
  get 'subjects', to: 'subjects#index'

  #Ruta para obtener tutores de un tema especifico
  get 'topics/tutors/:idTopic', to: 'topics#tutors'
  #Ruta para mostrar curso
  get 'tutors/:idTutor/courses/:idTopic', to: 'courses#show'
  #Ruta para crear un curso
  post 'tutors/:idTutor/courses', to: 'courses#create'
  #Inscirbir un estudiante a un curso
  post 'students/:idStudent/courses/:idCourse', to: 'courses#register'
  #Registrar un estudiante
  post 'students', to: 'students#create'
  #Mostrar un estudiante
  get 'students/:idStudent', to: 'students#show'
  #Crear un tema
  post 'subjects/:idSubject/topics', to: 'topics#create'
  #Crear un tutor
  post 'tutors', to: 'tutors#create'
  #Actualizar curso
  post 'courses/:idCourse', to: 'courses#update'

end
