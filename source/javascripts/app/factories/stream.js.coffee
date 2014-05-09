@socialcast.factory "Stream", ["$resource", "$http", ($resource, $http) ->
  $resource("https://er.staging.socialcast.com/api/streams.json", { id: "@id" })
]

