@socialcast.factory "Message", ["$resource", "$http", ($resource, $http) ->
  $resource "https://er.staging.socialcast.com/api/messages.json", { bearer_token: token },
      query:
        isArray: false

]
