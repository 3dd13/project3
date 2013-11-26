object false 

child @events, object_root: false do
	attributes :id, :title, :photo, :description, :price, :category,
		:admin_id, :created_at

	node :href do |event|
		venue_event_url(@venue, event)
	end
	
	node :links do |event|
		{
			venue: venue_url(@venue)
		}
	end

	node :linked do |event|
		{
			events: venue_events_url(@venue)
		}
	end

end