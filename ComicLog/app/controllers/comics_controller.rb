class ComicsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :show, :index]

  def index
    @comics = Comic.all
    @user = current_user
    render :index
  end

  def show
    @comic = Comic.find(params[:id])
  end
  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
    if @comic.valid?
      @comic.save
      flash[:notice] = "You created a comic!"
      redirect_to comics_path
    else
      redirect_to new_comic_path
    end
  end

private

  def comic_params
    params.require(:comic).permit(:title, :publisher_id)
  end

end
