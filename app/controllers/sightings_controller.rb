class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    # for relationships
    options = { include: [:bird, :location]}
  #with serializer
  render json: SightingSerializer.new(sighting, options)
  end

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end
end
