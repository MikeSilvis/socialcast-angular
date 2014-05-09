@socialcast.controller 'messageController', ['$scope', '$routeParams', ($scope, $routeParams) ->
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
    $scope.objectToQuery({ page: ++$scope.stream.page, id: $routeParams.id }).$promise.then (messages) ->
      $scope.stream.loading = false
      $scope.stream.messages = _.uniq($scope.stream.messages.concat(messages.messages))

  $scope.newMessage = {
    body: $scope.defaultMessage
    user: {
      avatars: {
        square45: 'https://gp1.wac.edgecastcdn.net/801245/s3.amazonaws.com/socialcast_staging/tenants/6/profile_photos/11227/1bwber02sx2vn35452ri_square45.png?AWSAccessKeyId=AKIAI6BMJILEM6YSJ66Q&Expires=1401624000&Signature=JO0Jkw2%2F91aTDLdoveGqzTXDEOg%3D'
      }
      name: 'Mike Silvis'
    }
  }

  $scope.addUpdate = ->
    $scope.stream.messages = $scope.stream.messages.unshift(angular.copy($scope.newMessage))
    $scope.newMessage.body = ''
]
