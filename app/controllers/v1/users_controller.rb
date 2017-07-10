class V1::UsersController < ApplicationController
  def index
    @users = User.all

    render json: @users, status: :ok
  end

  def show
    @user = User.find_by(id: params[:id])

    render json: @user, status: :ok
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    @user.save
    render json: @user, status: :created
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
