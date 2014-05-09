@socialcast.controller 'messageController', ['$scope', 'Message', ($scope, Message) ->
  $scope.stream = {
    loading: false,
    messages: [],
    page: 0,
    commentLimit: 4
  }

  $scope.loadMore = ->
    $scope.stream.loading = true
    $scope.getMessages()

  $scope.seeMore = ->
    $scope.stream.commentLimit = 100

  $scope.getMessages = ->
    $scope.objectToQuery.$promise.then (messages) ->
      $scope.stream.loading = false
      $scope.stream.messages = $scope.stream.messages.concat(messages.messages)
]
