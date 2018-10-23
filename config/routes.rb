Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students
  get 'topics/:idSubject', to: 'topics#index'
  get 'subjects', to: 'subjects#index'
  
  get 'topics/tutores/:idTopic', to: 'topics#tutores'
end
