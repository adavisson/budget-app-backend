class UserController < ApplicationController
  def index
    @users = User.all
    render :json => @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user 
    else
      render :json => "failed to create user", status: 400
    end
  end

  def show
    @user = User.find(params[:id])

    render json: @user, include: ["budget", "categories"], except: [:password_digest]
  end

  def user_params
    params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
