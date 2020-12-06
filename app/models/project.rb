# frozen_string_literal: true

# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string
#  category_id :integer
#  completed   :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Project < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
end
