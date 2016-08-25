class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    @genres = Genre.all
    # @song.notes.build
  end

  def create
    @song = Song.create(song_params)
    redirect_to songs_path
  end

  def edit
    @song = Song.find(params[:id])
  end


  private

  def song_params
        params.require(:song).permit(:artist_name, :genre_id, :title, :note_contents => [])
  end
end
