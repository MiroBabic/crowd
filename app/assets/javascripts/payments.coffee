# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#payment_reward_id').change ->
  alert 'hello'
  $reward_id = $('#payment_reward_id').value()
  $.ajax
    url: '/show_reward_desc'
    type: 'GET'
    data: reward_id: $reward_id
  return