Rails.application.routes.draw do
  get 'category/create'
  get '/projects', to: 'project#index'
  post '/todos', to: 'project#create'
  patch '/projects/:category_id/todos/:project_id', to: 'project#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
