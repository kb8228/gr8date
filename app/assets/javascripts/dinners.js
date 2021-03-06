// Place all the behaviors and hooks related to the matching controller here.

$(document).ready(function(){
  var planCuisine = $("#cuisine").text();
  console.log(planCuisine); 
  var API_BASE = "/api/dinners/?cuisine=" + planCuisine;
  console.log(API_BASE);
  var pathname = window.location.pathname;
  pathname = pathname.replace('/edit', '');

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
      // console.log(data[i].id);
      addDinner( $('#dinner-list'), data[i] );
    }
  });

  // for when json fails:
  json.fail(function(data){
    $('dinner-section').html("<h2>Data failed to load.</h2>");
  });
  //console.log(json);

  function addDinner(jqElem, data){
    var dinnerId = data.id;// THIS LINE - CONSOLE ERROR - Cannot read property 'id' of undefined
    var dinnerName = data.name;
    var dinnerCuisine = data.cuisine
    var dinnerHours = data.hours;
    var dinnerAddress = data.address.replace(" Santa Monica", "");
    var dinnerPhone = data.phone_number;
    var dinnerAlcohol = data.alcohol;
    var dinnerImg = data.image_url;

    var listItem = "<div class='item-box'>";
    listItem += "<h3>" + dinnerName + "</h3>";
    listItem += "<p>" + dinnerAddress + "</p>";
    listItem += "<p>" + dinnerPhone + "</p>";
    listItem += "<img class='img-thumb' src='" + dinnerImg + "'>";
    listItem += "<div class='info-link' id='" + dinnerId + "'><p>info</p></div></div>";

    jqElem.append("<li class='dinner-click' id='" + dinnerId + "'>" + listItem + "</li>");   
  }; // AddDinner END

  $("#dinner-list").on('click', 'li', function(){
    var id = $(this).attr('id');
    var url = "/api" + pathname + "?dinner_id=" + id;
    //console.log(url);
    $.ajax({
      datatype: 'json',
      type: 'PATCH',
      url: url,
      data: {plan: {dinner_id: id}},
      success: function(receivedData){
        console.log(receivedData);
      },
      error: function(err){
        console.log(err);
      }
    });
  });

  $("#dinner-list").on('click', '.info-link', function(){
    var id = $(this).attr('id');
    window.location.pathname = "/dinners/" + id;
  });

});