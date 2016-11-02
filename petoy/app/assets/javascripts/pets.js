// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('turbolinks:load', function(){
  petLinkListener();
})

// list all pet toys

  // var petLinkListener = function() {
  //   $('.pet-link').on('ajax:success', function(event, response){
  //     // console.log(response.length)

  //     for (var i=0;i<response.length;i++){
  //       console.log(response[i].description)
  //     }
  // });

// list only the shortest description
var petLinkListener = function() {
    $('.pet-link').on('ajax:success', function(event, response){

      var shortest_description = response[0].description

      // console.log('short: ' + shortest_description)
      for (var i=0;i<response.length-1;i++){

        if (response[i].description.length > response[i+1].description.length) {
          shortest_description = response[i+1].description
        }
      }
      console.log(shortest_description)
  });

}


