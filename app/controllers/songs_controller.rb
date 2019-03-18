class SongsController < ApplicationController

  before_action :get_record, only: [:new, :create, :edit, :update, :destroy]
  before_action :get_song, only: [:edit, :update, :destroy]
  
  def index
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = @record.songs.new(song_params)

    if(@song.save)
      redirect_to record_path(@record.id)
    else
      render 'songs/new'
    end
  end

  def edit
  end

  def update
    if(@song.update_attributes(song_params))
      redirect_to record_path(@record.id)
    else
      render 'songs/edit'
    end
  end

  def destroy
    if(@song.destroy)
      redirect_to record_path(@record.id)
    end
  end

  private
  def get_record
    @record = Record.find(params[:record_id])
  end

  def get_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:record_id, :name, :duration, :track_number)
  end
end
