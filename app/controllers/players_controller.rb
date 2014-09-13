class PlayersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_player, only: [:show, :edit, :update, :destroy]

  def index
    @players = Player.all
  end

  def show

  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.user_id = current_user.id
    if @player.save
      redirect_to players_url
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @player.update_attributes(player_params)
      redirect_to player_path(@player.id)
    else
      render :edit
    end
  end

  def destroy
    @player.destroy
    redirect_to players_url
  end

  private

  def player_params
    params.require(:player).permit(:name, :description)
  end

  def find_player
    @player = Player.find(params[:id])
  end
end
