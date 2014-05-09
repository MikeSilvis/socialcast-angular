@socialcast.controller 'userController', ['$scope', 'User', '$routeParams', 'UserMessage', ($scope, User, $routeParams, UserMessage) ->
  $scope.objectToQuery = UserMessage.query({page: ++$scope.page, userId: $routeParams.userId})
  $scope.user = User.get(id: $routeParams.userId)
]
