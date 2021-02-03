class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
    render 'form'
  end

  def create
    @artist = Artist.create(input_params(:artist, :name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
    render 'form'
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(input_params(:artist, :name, :bio))
    redirect_to artist_path(@artist)
  end
end
