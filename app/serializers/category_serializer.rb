class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :projects

  def projects
    projects = []
    object.projects.all.each do |project|
      projects << { id: project.id, text: project.title,
                    isCompleted: project.completed }
    end
    projects
  end
end
