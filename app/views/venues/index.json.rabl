object false 

child @venues, object_root: false do
	attributes :id, :name, :district, :address, :map_code

	node :href do |venue|
		venue_url(venue)
	end
	
	node :links do |venue|
		{
			events: venue_events_url(venue)
		}
	end

	node :linked do |venue|
		{
			venues: venues_url
		}
	end

end