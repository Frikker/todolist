class ProjectController < ApplicationController
  def index
  	render json: Category.all
  end

  def create
    validate Projects::Create.run(title: params[:title],
                                  category_id: params[:category_id])
  end

  def update
    project = Project.find(params[:id])
    title = params[:title].nil? ? project.title : params[:title]
    category_id = params[:category_id].nil? ? project.category_id : params[:category_id]
    completed = params[:completed].nil? ? project.completed : params[:completed]
    validate Projects::Update.run(title: title, category_id: category_id,
                                  completed: completed)
  end
end
