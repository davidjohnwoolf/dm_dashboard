class AdventuresController < ApplicationController
  before_action :authenticate_user!
  before_action :find_adventure, only: [:show, :edit, :update, :destroy]

  def index
    @adventures = Adventure.all
  end

  def show

  end

  def new
    @adventure = Adventure.new
    @adventure.encounters.build
  end

  def create
    @adventure = Adventure.new(adventure_params)
    @adventure.user_id = current_user.id
    if @adventure.save
      redirect_to adventures_url
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @adventure.update_attributes(adventure_params)
      redirect_to adventure_path(@adventure.id)
    else
      render :edit
    end
  end

  def destroy
    @adventure.destroy
    redirect_to adventures_url
  end

  private

  def adventure_params
    params.require(:adventure).permit(:title, :description, :completed, encounters_attributes: [:title, :description, :reward, :experience, :completed, :id, :_destroy])
  end

  def find_adventure
    @adventure = Adventure.find(params[:id])
  end
end
