# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "page:change", ->
  $('.scroll').click (event) ->
    event.preventDefault()
    $('html,body').animate { scrollTop: $(@hash).offset().top }, 1000
    return
  return
