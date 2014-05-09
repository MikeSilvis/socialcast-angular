@socialcast.factory "Topic", ["$resource", "$http", ($resource, $http) ->
  $resource "https://er.staging.socialcast.com/api/topics/:id.json", { bearer_token: token, id: '@id' },
      query:
        isArray: false

]
