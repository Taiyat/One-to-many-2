class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by(id: params[:id])
    @artist = Artist.find_by(id: @artist.id)
    @songs = Song.where(artists_id: @artist.id)
  end

  def new
  end

  def create
    @artist = Artist.new
    @artist.name = params[:name]
    @artist.image = params[:image]

    if @artist.save
      redirect_to "/artists/#{ @artist.id }"
    else
      render 'new'
    end
  end

  def edit
    @artist = Artist.find_by(id: params[:id])
  end

  def update
    @artist = Artist.find_by(id: params[:id])
    @artist.name = params[:name]
    @artist.image = params[:image]

    if @artist.save
      redirect_to "/artists/#{ @artist.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @artist = Artist.find_by(id: params[:id])
    @artist.destroy


    redirect_to "/artists"
  end
end
