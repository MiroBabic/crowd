# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->       
	$('#payments').DataTable(
		'order': [0,'asc']
		'language': 'url': 'datatables_slovak.json'
	);

jQuery ->       
	$('#userpayments').DataTable(
		'order': [0,'asc']
		'language': 'url': 'datatables_slovak.json'
	);