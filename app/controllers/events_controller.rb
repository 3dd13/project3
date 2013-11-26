class EventsController < ApplicationController
  before_action :get_venue
  before_action :get_event, only: [ :update, :destroy ]
  
  respond_to :json

  def index
    @events = if params[:id]
      @venue.events.where('id in (?)', params[:id].split(","))
    else
      @venue.events
    end
  end

  def create
    event = @venue.events.create(event_params)

    if event.save 
      head :created, location: venue_event_url(@venue, event)
    else
      head :unprocessable_entity
    end
  end

  def update
    if @event.update(event_params)
      head :no_content
    else
      head :unprocessable_entity
    end
  end

  def destroy
    head @event.destroy ? :no_content : :unprocessable_entity
  end
  
  private

  def get_venue
    head :bad_request unless @venue = Venue.where('id = ?', params[:venue_id]).take
  end
  
  def get_event
    head :not_found unless @event = @venue.events.where('id = ?', params[:id]).take
  end
  
  def event_params
    params.require(:event).permit(
      :title, :body, :published, :venue
    )
  end
end