module Categories
  class Create < ActiveInteraction::Base
    string :name

    def execute
      create_category
    end

    private

    def create_category
      Category.create!(name: name)
    end
  end
end