Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # list all tasks
  get '/tasks', to: 'tasks#index'
  # find one task
  get '/tasks/new', to: 'tasks#new', as: 'tasks/new'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # create new task
  post '/tasks', to: 'tasks#create'
  # update task
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'tasks/edit'
  patch '/tasks/:id', to: 'tasks#update'
  # delete task
  delete '/tasks/:id', to: 'tasks#destroy', as: 'tasks/delete'
end
