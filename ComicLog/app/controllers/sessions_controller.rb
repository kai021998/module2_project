class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]


  def new
    render :new
  end

  def create
    @user = User.find_by(name: params[:name])
    if !!@user && @user.authenticate(params[:password])
      flash[:notice] = "You've logged in succesfully!"
      session[:logged_in_user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:notice] = "You got the username or password wrong you stupid fuck"
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:logged_in_user_id)
    redirect_to new_session_path
  end


end
