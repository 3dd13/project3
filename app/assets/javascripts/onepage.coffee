$ ->
  Handlebars.registerHelper 'niceDate', (d) ->
    moment(d).calendar()

  showVenues = ->
    $.ajax '/api/venues',
      data: 'json'
      success: (data) ->
        source = $("#venues-template").html()
        template = Handlebars.compile source
      
        $('#output').html template(data)
      error: (x,y,z) ->
        console.log x,y,z
        
  showEvents = (id) ->
    $.ajax
      url: "/api/venues/#{id}/events"
      type: 'GET'
      data: 'json'
      success: (data) ->
        source = $("#events-template").html()
        template = Handlebars.compile source
      
        $('#output').html template(data)
      error: (x,y,z) ->
        console.log x,y,z
        
  $('#output').on 'click', 'ul.venue-links li', (e) ->
    showEvents $(this).data('id')
  
  $('#output').on 'click', 'p.venues-path', (e) ->
    showVenues()

  showVenues()


