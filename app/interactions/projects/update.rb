
module Projects
  class Update < ActiveInteraction::Base
    integer :id
    integer :category_id
    string :title
    boolean :completed

    def execute
      update_project
    end

    private

    def update_project
      Project.find(id).update(category_id: category_id, title: title,
                              completed: completed)
    end
  end
end