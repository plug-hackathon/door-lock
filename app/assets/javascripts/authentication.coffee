# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
dispatcher = new WebSocketRails('https://fast-refuge-6645.herokuapp.com/websocket')

channel = dispatcher.subscribe('notifications')
channel.bind 'knock', (data) ->
  window.location.href = '/authentication/users'

$('select').material_select()
