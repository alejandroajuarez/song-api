class SongsController < ApplicationController
  
  def index
    @songs = Song.all
    render :index

  end

  def show
    id_find = params[:id]
    @song = Song.find_by(id: id_find)
    render :show
  end

  def create
    @song = Song.new(
      title: params[:input_title],
      album: params[:input_album],
      artist: params[:input_artist],
      year: params[:input_year]
    )
    @song.save
    render :show
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title]
    @song.album = params[:album]
    @song.artist = params[:artist]
    @song.year = params[:year]
    render :show
  end
end
