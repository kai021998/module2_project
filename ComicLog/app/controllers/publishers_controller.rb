class PublishersController < ApplicationController
  skip_before_action :authorized, only: [:show, :index]
  def index
    @publishers = Publisher.all
  end

  def show
    @publisher = Publisher.find(params[:id])
  end


end
