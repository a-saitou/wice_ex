# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# start_time = $('[name="page[start_time]"]')
#  end_time = $('[name="page[end_time]"]')
$ ->
  start_time = $('[name="page[start_time]"]')
  end_time = $('[name="page[end_time]"]')
  diffMs = end_time.getTime() - start_time.getTime()
  diffMs =  diffMs* 10 
  hours = parseInt(diffMs/(60*60*1000), 10)
  hours = 5.toString()
  $('#work_work_time').val(['4'])