# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('input:file').change ->
    if $(this).val()
      $('input:submit').attr 'disabled', false
      # or, as has been pointed out elsewhere:
      # $('input:submit').removeAttr('disabled'); 
    return
  return

jQuery -> 
	$('form').validate(
		 lang: 'sk'
		 rules:
		 	'project[amount]': min: 1
		 highlight: (element) ->
    		$(element).parent().addClass 'state-error'
    		return
  		 unhighlight: (element) ->
    		$(element).parent().removeClass 'state-error'
    		return
	);

jQuery ->
  $('.wysihtml5').each (i, elem) ->
    $(elem).wysihtml5()
    return
  return

jQuery ->       
  $('#finisheddetail').DataTable(
    'order': [0,'asc']
    'language': 'url': 'datatables_slovak.json'
  );

jQuery ->       
  $('#finished').DataTable(
    'order': [0,'asc']
    'language': 'url': 'datatables_slovak.json'
  );

$(document).ready ->
  $('.fancybox').fancybox
    openEffect: 'elastic'
    closeEffect: 'none'
  return