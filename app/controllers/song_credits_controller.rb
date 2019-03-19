class SongCreditsController < ApplicationController

  before_action :get_record, only: [:new, :create, :edit, :update, :destroy]
  before_action :get_song, only: [:new, :create, :edit, :update, :destroy]
  before_action :get_song_credit, only: [:edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @song_credit = SongCredit.new
  end

  def create
    @song_credit = @song.song_credits.new(song_credit_params)

    if(@song_credit.save)
      redirect_to record_song_path(record_id: @record.id, id: @song.id)
    else
      render 'song_credits/new'
    end
  end

  def edit
  end

  def update
    if(@song_credit.update_attributes(song_credit_params))
      redirect_to record_song_path(record_id: @record.id, id: @song.id)
    else  
      render 'song_credits/edit'
    end
  end

  def destroy
    if(@song_credit.destroy)
      redirect_to record_song_path(record_id: @record.id, id: @song.id)
    end
  end

  private
  def get_record
    @record = Record.find(params[:record_id])
  end

  def get_song
    @song = Song.find(params[:song_id])
  end

  def get_song_credit
    @song_credit = SongCredit.find(params[:id])
  end

  def song_credit_params
    params.require(:song_credit).permit(:song_id, :player_id, :description)
  end
end
