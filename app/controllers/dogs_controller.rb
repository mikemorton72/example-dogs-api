class DogsController < ApplicationController
  def create
    if current_user
      dog = Dog.new(
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
        dog_years: params[:age].to_i * 7,
        user_id: current_user.id
      )
      if dog.save
        render json: dog.as_json
      else
        render json: {errors: dog.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {message: "User must be logged in to create new dogs"}
    end
  end
end
