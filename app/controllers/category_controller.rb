# frozen_string_literal: true

class CategoryController < ApplicationController
  def create
    validate Categories::Create.run(name: params[:name])
  end
end
