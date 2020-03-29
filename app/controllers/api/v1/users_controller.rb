class Api::V1::UsersController < ApplicationController
	def index
		users = User.all 
		render json: users
	end 

	def create 
		user = User.create(user_params)
		if user.valid?
			render json: {user: UserSerializer.new(@user)}, status: 201
		else
			render json: {error: 'failed to create user'}, status: :not_acceptable
		end 
	end

	private
	def user_params
		params.require(:user).permit(:username, :password, :bio, :avatar)
	end
end
