@socialcast.controller 'streamController', ['$scope', 'Message', ($scope, Message) ->
  $scope.objectToQuery = Message.query({ page: ++$scope.page })
  $scope.defaultMessage = ''
]
