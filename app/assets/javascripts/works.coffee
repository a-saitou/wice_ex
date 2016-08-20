# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# start_time = $('[name="page[start_time]"]')
#  end_time = $('[name="page[end_time]"]')
$ ->
  start_time = $('[name="page[start_time]"]')
  end_time = $('[name="page[end_time]"]')
  diffMs = end_time.getTime() - start_time.getTime()
  hours = parseInt(diffMs/(60*60*1000), 10)
  $('#work_over_time').val([hours])