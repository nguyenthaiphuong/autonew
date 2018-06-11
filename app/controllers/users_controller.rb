class UsersController < ApplicationController
  def index
  	@user = User.where(name: params[:name], password: params[:password])
  	if @user[0].dem == 0
  		@user[0].dem = 1
  		@user[0].save
  		render json: true
  	else
  		render json: false
  	end
  end

  def destroy
  	@user = User.where(name: params[:name])
  	@user[0].dem = 0
  	@user[0].save
  	render json: true
  end

  def list_all
  	render json: User.all
  end
end
