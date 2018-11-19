class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    @song.name = params[:song][:name]
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update!(song_params)
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end
