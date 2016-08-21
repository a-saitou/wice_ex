# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# start_time = $('[name="page[start_time]"]')
#  end_time = $('[name="page[end_time]"]')
#$(document).on 'page:change', ->
$(document).on 'page:change', ->
	end_time = $('#work_end_time').val()	
	$('#work_note').val(end_time)
	
$('#work_end_time').keyup(function() {
		$('#work_note').text($(this).val());
	});
#$(document).ready(ready)
#$(document).on('page:load', ready)
#	end_time = $('#work_end_time').val()	
#	$('#work_note').val(end_time)
#	start_time = $('#work_start_time').val()
#	end_time = $('#work_end_time').val()
#	$('#work_note').val(5)
#	end_time = $('#work_end_time').val()
#
#	d1 = new Date "2013-07-17 11:45:00 +0900"
#	d2 = new Date "2013-08-05 19:00:00 +0900"
#	diffMs = d2.getTime() - d1.getTime()
#	hours = diffMs/(60*60*1000)
#	$('#work_start_time').val([hours])
#   hours = 5.toString()
#   $('#work_work_time').val([hours])
#  start_time = new Date($('[name="page[start_time]"]'))
#  end_time = new Date($('[name="page[end_time]"]'))
#  diffMs = end_time- start_time 
#  hours = diffMs/(60*60*1000)
#  hours = hours.toString()
#  $('#work_work_time').val([hours])