Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # All tasks
  get '/tasks', to: 'tasks#index'

  # Display One task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Create a new task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # Edit task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Delete task
  delete '/tasks/:id', to: 'tasks#destroy'

end
