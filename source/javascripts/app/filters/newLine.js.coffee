angular.module("newLineFilter", []).filter "newline", ->
  (input) ->
    input.replace(/\n/g, '<br/>')
