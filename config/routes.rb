Rails.application.routes.draw do
  get '/projects', to: 'project#index'
  post '/todos', to: 'project#create'
  post '/category', to: 'category#create'
  patch '/projects/:category_id/todos/:project_id', to: 'project#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
