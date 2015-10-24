# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

recognition = new webkitSpeechRecognition

recognition.lang           = "sv-SE"
recognition.continous      = false
recognition.interimResults = false

recognition.onresult = (e) ->
  word = _.map(event.results[0][0].transcript.split(" "), (w) -> w[0]).join("")
  $("#word").val(word)
  $("form:first").submit()

$(document).on "click", "#mic", ->
  recognition.start()
