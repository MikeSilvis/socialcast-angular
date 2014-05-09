@socialcast.controller 'userController', ['$scope', 'User', '$routeParams', 'UserMessage', ($scope, User, $routeParams, UserMessage) ->
  $scope.objectToQuery = UserMessage.query
  $scope.user = User.get(id: $routeParams.id)
]
