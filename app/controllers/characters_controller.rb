class CharactersController < ApplicationController

  def create
    #needs to make the show FIRST to create the character, but the make_show= method is being called in the params after
    # byebug
    @network = Network.find_or_create_by(name: params[:make_show][:show_name])
    @character = Character.new(character_params)
  end

  private

  def character_params
    params.require(:character).permit(:actor_id, :name, make_show:[:name, :rating, :network])
  end

end
