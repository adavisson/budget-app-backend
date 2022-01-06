class AuthenticationController < ApplicationController
  include AuthenticationHelper

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: {token: token(@user.id), user_id: @user.id}
    else
      render json: "Sorry, incorrect username or password", status: 400
    end
  end
end