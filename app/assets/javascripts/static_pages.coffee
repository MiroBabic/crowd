# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->       
	$('#projects').DataTable(
		'order': [0,'asc']
		'language': 'url': 'datatables_slovak.json'
	);

ParallaxSlider = do ->
  { initParallaxSlider: ->
    $('#da-slider').cslider
      current: 0
      bgincrement: 50
      autoplay: true
      interval: 4000
    return
 }

jQuery ->
  $('#checkbox_newproject').click ->
    if $(this).is(':checked')
      $('#newprojectbutton').removeAttr 'disabled', 'disabled'
    else
      $('#newprojectbutton').attr 'disabled'
    return
  return