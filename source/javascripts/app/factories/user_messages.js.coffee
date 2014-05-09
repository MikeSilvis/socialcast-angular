@socialcast.factory "UserMessage", ["$resource", "$http", ($resource, $http) ->
  $resource "https://er.staging.socialcast.com/api/users/:userId/messages.json", { userId: '@userId', bearer_token: token },
      query:
        isArray: false

]
