class SiteController < ApplicationController
  def index
    @players = Player.all
    @adventures = Adventure.all
    @locations = Location.all
    @npcs = Npc.all
  end
end
