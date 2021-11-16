Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks, only: [:index, :show, :new, :create, :destroy, :edit, :update]
  # get 'tasks', to: 'tasks#index', as: :tasks
  # get 'tasks/new', to: 'tasks#new', as: :new_task
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # post 'tasks', to: 'tasks#create'
  # post 'tasks/edit', to: 'tasks#edit', as: :edit_task
  # destroy 'task'
end
