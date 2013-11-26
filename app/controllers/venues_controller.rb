class VenuesController < ApplicationController
  before_action :get_venue, only: [ :update, :destroy ]

	def index
    @venues = if params[:id]
      Venue.where('id in (?)', params[:id].split(","))
    else
      Venue.all
    end
  end

  def create
    venue = Venue.create(venue_params)

    if venue.save 
      head :created, location: venue_url(venue)
    else
      head :unprocessable_entity
    end
  end


  def update
    if @venue.update(venue_params)
      head :no_content
    else
      head :unprocessable_entity
    end
  end


  def destroy
    head @venue.destroy ? :no_content : :unprocessable_entity
  end

  private

  def get_venue
    @venue = Venue.where('id = ?', params[:id]).take
  end

  def venue_params
    params.require(:venue).permit(
      :name, :district, :address, :map_code, :event
    )
  end
end
