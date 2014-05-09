@socialcast.factory "User", ["$resource", "$http", ($resource, $http) ->
  $resource "https://er.staging.socialcast.com/api/users/:id.json", { id: "@id", bearer_token: token }, { query:  { isArray: false } }
]
