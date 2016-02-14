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