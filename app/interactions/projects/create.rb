

module Projects
  class Create < ActiveInteraction::Base
    integer :category_id
    string :title

    def execute
      create_project
    end

    private

    def create_project
      Project.create!(title: title, category_id: category_id)
    end
  end
end
