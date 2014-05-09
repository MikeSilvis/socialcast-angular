@socialcast.controller 'streamController', ['$scope', 'Message', ($scope, Message) ->
  $scope.objectToQuery = Message.query
  $scope.defaultMessage = ''
]
