$(document).ready(function(){

  var planDate = $("#date").text();
  console.log(planDate);
  var planCategory = $("#category").text();
  console.log(planCategory);
  //this is where we pull our events from:
  var API_BASE = "/api/events/?category=" + planCategory + "&event_date=" + planDate;
  console.log(API_BASE);
  //this picks up the plan's url '/plans/:id/edit':
  var pathname = window.location.pathname;
  // this chops off '/edit':
  pathname = pathname.replace('/edit', '');
  //console.log(pathname);

  //this is our events' index in json
  var json = $.ajax({
    datatype: 'json',
    type: 'GET',
    url: API_BASE,
    data: {}
  });

  // when event index comes back, we run addEvent (to <li>'s):
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
    var eventId = data.id; // THIS LINE - CONSOLE ERROR - Cannot read property 'id' of undefined
    var eventName = data.event_name;
    var eventDate = data.event_date;
    var eventTime = data.event_time;
    var venueName = data.venue_name;
    var venueAddress = data.venue_address;
    var venuePhone = data.phone;
    var eventCategory = data.category;
    var venueUrl = data.venue_url;
    var eventImg = data.image_url;
    // this is what we will include in individual event box
    var listItem = "<div class='item-box'>";
    listItem += "<h3>" + eventName + "</h3>";
    listItem += "<p>where: &nbsp;" + venueName + "</p>";
    listItem += "<p>when: &nbsp;" + eventTime + "</p>";
    listItem += "<img class='img-thumb' src='" + eventImg + "'>";
    listItem += "<div class='info-link' id='" + eventId + "'><p>info</p></div></div>"; //finish this div

    // we will put our event stuff in <li>'s:
    jqElem.append("<li class='event-click' id='" + eventId + "'>" + listItem + "</li>");  
  }; // AddEvent END

    // here we set plan's event_id on click:
    $("#event-list").on('click', 'li', function(){
      var id = $(this).attr('id');
      var url = "/api" + pathname + "?event_id=" + id;
      //console.log(url);
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

    $("#event-list").on('click', '.info-link', function(){
      var id = $(this).attr('id');
      window.location.pathname = "/events/" + id;
    });
}); //doc ready ends
