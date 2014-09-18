class NpcsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_npc, only: [:show, :edit, :update, :destroy]

  def index
    @npcs = Npc.all
  end

  def show
  end

  def new
    @npc = Npc.new
  end

  def create
    @npc = Npc.new(npc_params)
    @npc.user_id = current_user.id
    if @npc.save
      redirect_to npcs_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @npc.update_attributes(npc_params)
      redirect_to npc_path(@npc.id)
    else
      render :edit
    end
  end

  def destroy
    @npc.destroy
    redirect_to npcs_url
  end

  private

  def npc_params
    params.require(:npc).permit(:name, :description)
  end

  def find_npc
    @npc = Npc.find(params[:id])
  end
end
