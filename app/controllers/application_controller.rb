class ApplicationController < ActionController::API

  def validate(outcome)
    if outcome.valid?
      render json: { message: 'Success' }, status: :created
    else
      render json: outcome.errors, status: :unprocessable_entity
    end
  end
end
