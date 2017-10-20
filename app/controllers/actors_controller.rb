class ActorsController < ApplicationController

  def index
    @actors = Actor.order('last_name')
    @actor = Actor.new
  end

  def create
    @actor = Actor.find_or_create_by(actor_params)
    redirect_to actors_path
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    @shows = @actor.shows
    @character = Character.new
    @characters = @actor.characters
  end

  private

  def actor_params
    params.require(:actor).permit(:first_name, :last_name)
  end

end
