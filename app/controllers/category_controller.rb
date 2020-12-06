# frozen_string_literal: true

class CategoryController < ApplicationController
  def create
    validate Categories::Create.run()
  end
end
