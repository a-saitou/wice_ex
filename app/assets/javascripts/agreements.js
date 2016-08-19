# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
  $(document).ready(function(){
  $('#orderer_id').change(function(){
    $.ajax({
      url:"greements/find_by_orderer_id",
      type: "GET",
      data: { id: $('#orderer_id').val() }
    });
  });
  })