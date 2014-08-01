class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def new
  end

  def create
    @song = Song.new
    @song.name = params[:name]
    @song.image = params[:image]
    @song.artists_id = params[:artist_id]

    if @song.save
      redirect_to "/songs/#{ @song.id }"
    else
      render 'new'
    end
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.name = params[:name]
    @song.image = params[:image]

    if @song.save
      redirect_to "/songs/#{ @song.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @song = Song.find_by(id: params[:id])
    @song.destroy


    redirect_to "/songs"
  end
end
