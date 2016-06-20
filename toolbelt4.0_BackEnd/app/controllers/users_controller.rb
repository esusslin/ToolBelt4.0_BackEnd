class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    if user = User.find_by(email: params[:email])
      render json: {message: "User already exist", user_id: user.id}
    else
      p "****************************************"
      p params
      p "****************************************"
      user = User.new(email: params[:email], first_name: params[:first_name], last_name: params[:last_name], image: params[:image])
      p "****************************************"
      p user
      p "****************************************"
      p user.save
      p "****************************************"
      if user
        render json: {message: "User created successfully", user_id: user.id }
      else
        render json: {message: "User not created"}
      end
    end
  end

end
