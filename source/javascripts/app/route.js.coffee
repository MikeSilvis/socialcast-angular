@socialcast.config [
  "$routeProvider"
  ($routeProvider) ->
    $routeProvider.when("/stream",
      templateUrl: "/pages/stream.html"
      controller: "streamController"
    ).when("/users/:userId",
      templateUrl: "/pages/user.html"
      controller: "userController"
    ).when("/topics/:topicId",
      templateUrl: "/pages/topic.html"
      controller: "topicController"
    ).otherwise redirectTo: "/stream"
]
