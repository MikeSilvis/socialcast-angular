@socialcast.config [
  "$routeProvider"
  ($routeProvider) ->
    $routeProvider.when("/stream",
      templateUrl: "/pages/stream.html"
      controller: "streamController"
    ).when("/users/:id",
      templateUrl: "/pages/user.html"
      controller: "userController"
    ).when("/topics/:id",
      templateUrl: "/pages/topic.html"
      controller: "topicController"
    ).otherwise redirectTo: "/stream"
]
