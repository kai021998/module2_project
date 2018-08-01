class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]


  def new
    render :new
  end

  def create
    @user = User.find_by(username: params[:username ])

    if !!@user && @user.authenticate(params[:password])
      session[:logged_in_user_id] = @user.id
      redirect_to profile_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:logged_in_user_id)
    redirect_to new_session_path
  end


end
