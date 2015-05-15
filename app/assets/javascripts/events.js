// Place all the behaviors and hooks related to the matching controller here.

//patch request:  "/api/plan/" + plan.id + "?event_id=" + event.id
// "api/plan/2?event_id=3"

$(document).ready(function(){
  var API_BASE = "/api/events/";

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
      console.log(data[i].id);
      addEvent( $('#event-list'), data[i] );
    }
  });

  // for when json fails:
  json.fail(function(data){
    $('event-section').html("<h2>Data failed to load.</h2>");
  });
  console.log(json);

  function addEvent(jqElem, data){
    var eventId = data.id;
    var eventName = data.event_name;
    var eventDate = data.event_date;
    var eventTime = data.event_time;
    var venueName = data.venue_name;
    var venueAddress = data.venue_address;
    var venuePhone = data.phone;
    var eventCategory = data.category;
    var venueUrl = data.venue_url;

    var listItem = "<div class='item-box'" + eventId + ">";
    listItem += "<h3>" + eventName + "</h3></div>"; //finish this div

    jqElem.append("<li class='event-click' id='" + eventId + "'>" + listItem + "</li>");   
  }; // AddEvent END

  $("#event-list").on('click', 'li', function(){
    var id = $(this).attr('id');
    console.log(id);
  });

}); //doc ready ends
