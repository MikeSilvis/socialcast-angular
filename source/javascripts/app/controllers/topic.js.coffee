@socialcast.controller 'topicController', ['$scope', 'Topic', '$routeParams', ($scope, Topic, $routeParams) ->
  $scope.objectToQuery = Topic.get({ id: $routeParams.topicId, page: ++$scope.page })
]
