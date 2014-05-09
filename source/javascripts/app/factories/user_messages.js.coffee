@socialcast.factory "UserMessage", ["$resource", "$http", ($resource, $http) ->
  $resource "https://er.staging.socialcast.com/api/users/:id/messages.json", { id: '@id', bearer_token: token },
      query:
        isArray: false

]
