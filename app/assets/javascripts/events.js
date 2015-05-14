// Place all the behaviors and hooks related to the matching controller here.
$(document).ready(function(){

  var API_BASE = "/api/events";

  function addEvent(jqElem, data){
    var eventName = data.event_name;
    var eventDate = data.event_date;
    var eventTime = data.event_time;
    var venueName = data.venue_name;
    var venueAddress = data.venue_address;
    var venuePhone = data.phone;
    var eventCategory = data.category;
    var venueUrl = data.venue_url;

    var listItem = "<div class='item-box'>";
    listItem += "<h3>eventName</h3>"
    console.log(eventDate);
    console.log(eventTime);
  };

  var json = $.ajax({
    datatype: 'json',
    type: 'GET',
    url: API_BASE,
    data: {}
  });

  // when server responce is received, this is what we do with returned data:
  json.done(function(data){
    var i;
    for(i=0; i<6; i++){
      addEvent( $('#event-list'), i );
    }
  });

  // for when json fails:
  json.fail(function(data){
    $('event-section').html("<h2>Data failed to load.</h2>");
  });

}); //doc ready ends
