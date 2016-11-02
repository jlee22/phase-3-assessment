// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('turbolinks:load', function(){
  petLinkListener();
})

  var petLinkListener = function() {
    $('.pet-link').on('ajax:success', function(event, response){
      console.log(response);
  });

}
