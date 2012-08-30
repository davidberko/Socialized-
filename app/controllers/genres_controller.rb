class GenresController < ApplicationController
  def index
    @genres = Genre.newest
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params[:genre])
    if @genre.save
      flash[:success] = "genre created!"
      redirect_to @genre
    else
      flash.now[:error] = "something went wrong"
      render :new
    end
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
