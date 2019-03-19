class PlayersController < ApplicationController

  before_action :get_player, only: [:show, :edit, :update, :destroy]
  
  def index
    @players = Player.find_by_user(current_user.id)
  end

  def show
  end

  def new
    @player = Player.new
  end

  def create
    @player = current_user.players.new(player_params)

    if(@player.save)
      redirect_to players_path
    else
      render 'players/new'
    end
  end

  def edit

  end

  def update
    if(@player.update_attributes(player_params))
      redirect_to players_path
    else
      render 'players/edit'
    end
  end

  def destroy
    if(@player.destroy)
      redirect_to players_path
    end
  end

  private
  def player_params
    params.require(:player).permit(:name)
  end

  def get_player
    @player = Player.find(params[:id])
  end
end
