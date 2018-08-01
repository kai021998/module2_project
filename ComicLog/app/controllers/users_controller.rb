class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :show, :index]

  def new
    @user = User.new
    render :new
  end

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def create
    @user = User.create(user_params)
      if @user.valid?
        session[:logged_in_user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new
      end
    end

  def edit
    @comics = Comic.all
    @titles = Comic.all_titles
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = current_user
    byebug
    current_user.update
  end

private

 def user_params
   params.require(:user).permit(:name, :password)
 end

end
