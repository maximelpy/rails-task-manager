Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # All tasks
  get '/tasks', to: 'tasks#index'

  # Display task form
  get '/tasks/new', to: 'tasks#new', as: :new_task

  # Display One task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Create a new task
  post '/tasks', to: 'tasks#create'

  # Show Form from the selected task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # Patch the task
  patch '/tasks/:id', to: 'tasks#update'

  # Delete task
  delete '/tasks/:id', to: 'tasks#destroy'

end
