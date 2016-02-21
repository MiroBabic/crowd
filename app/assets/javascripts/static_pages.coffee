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
      autoplay: false
      interval: 4000
    return
 } 