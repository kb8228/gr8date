$(document).ready(function(){
  var API_BASE = "/api/events/";
  var pathname = window.location.pathname;
  pathname = pathname.replace('/edit', '');
  //console.log(pathname);

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
      //console.log(data[i].id);
      addEvent( $('#event-list'), data[i] );
    }
  });

  // for when json fails:
  json.fail(function(data){
    $('event-section').html("<h2>Data failed to load.</h2>");
  });
  //console.log(json);

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

    var listItem = "<div class='item-box'>";
    listItem += "<h3>" + eventName + "</h3></div>"; //finish this div

    jqElem.append("<li class='event-click' id='" + eventId + "'>" + listItem + "</li>");   
  }; // AddEvent END

    $("#event-list").on('click', 'li', function(){
      var id = $(this).attr('id');
      var url = "/api" + pathname + "?event_id=" + id;
      console.log(url);
      $.ajax({
        datatype: 'json',
        type: 'PATCH',
        url: url,
        data: {plan: {event_id: id}},
        success: function(receivedData){
          console.log(receivedData);
        },
        error: function(err){
          console.log(err);
        }
      })
  });
}); //doc ready ends
