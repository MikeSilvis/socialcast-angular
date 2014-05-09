@socialcast.directive "messageList", ->
  restrict: "AEC"
  scope: true
  replace: true
  templateUrl: "pages/partials/message.html",
  controller: ($scope) ->
    $scope.stream = {
      loading: false,
      messages: [],
      page: 0,
      commentLimit: 4
    }
