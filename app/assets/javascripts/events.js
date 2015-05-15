$(document).ready(function(){
  //this is where we pull our events from:
  var API_BASE = "/api/events/";
  //this picks up the plan's url '/plans/:id/edit':
  var pathname = window.location.pathname;
  // this chops off '/edit':
  pathname = pathname.replace('/edit', '');
  //console.log(pathname);
              // var planEventCategory;

  //             // // finding Plan's event category
  // var planCategory = $.ajax({
  //   datatype: 'json',
  //   type: 'GET',
  //   url: '/api' + pathname,
  //   data: {}
  // })

  // planCategory.done(function(data){
  //   console.log(data);
  // });
  // planCategory.fail(function(data){
  //   $('event-section').html("<h2>Events failed to load.</h2>");
  // });

  //this is our events' index in json
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
    var eventImg = data.image_url;
    // this is what we will include in individual event box
    var listItem = "<div class='item-box'>";
    listItem += "<h3>" + eventName + "</h3></div>"; //finish this div

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
}); //doc ready ends
