class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render(template: 'actors/index')
  end

  def actor_details
    @actor = Actor.where({ :id => params.fetch(:actor_id) }).first
    render(template: 'actors/show')
  end
end
