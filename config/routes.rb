Rails.application.routes.draw do
  
  root 'batches#home'

  resources :attendances

  devise_for :teachers


  # get 'students/create'
  post 'students/create', as: :students
  # get 'students/destroy'
  delete 'students/:id', to: 'students#destroy', as: :destroy_student


# changing the get request to post and adding as for path
  post 'batches/create', as: :batches
# get 'batches/destroy' changing destroy path
  delete 'batches/:id', to: 'batches#destroy', as: :destroy_batch


   # get 'classdays/create'
  post 'classdays/create', as: :classdays
  # get 'classdays/destroy'
  delete 'classdays/:id', to: 'classdays#destroy', as: :destroy_classday


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
