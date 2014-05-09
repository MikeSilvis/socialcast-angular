@socialcast.controller 'topicController', ['$scope', 'Topic', ($scope, Topic) ->
  $scope.objectToQuery = Topic.get
]
