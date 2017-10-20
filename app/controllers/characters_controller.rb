class CharactersController < ApplicationController

  def create
    @network = Network.find_or_create_by(name: params[:make_show][:show_name])
    @character = Character.new(character_params)
  end

  private

  def character_params
    params.require(:character).permit(:actor_id, :name, make_show:[:show_name,:rating,:network])
  end

end
