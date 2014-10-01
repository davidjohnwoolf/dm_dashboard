class SiteController < ApplicationController
  before_action :authenticate_user!

  def index
    @players = Player.all
    @adventures = Adventure.all
    @locations = Location.all
    @npcs = Npc.all
  end
end
