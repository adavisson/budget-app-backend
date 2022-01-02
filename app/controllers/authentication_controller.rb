class AuthenticationController < ApplicationController
  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render :json => "Successfully logged in", status: 200
    else
      render :json => "Login Failure", status: 400
    end
  end

  def logout
    session.delete :user_id
  end
end