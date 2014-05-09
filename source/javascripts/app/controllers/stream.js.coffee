@socialcast.controller 'streamController', ['$scope', 'Message', ($scope, Message) ->
  $scope.objectToQuery = Message.query({ page: ++$scope.page })

  $scope.newMessage = {
    body: ''
    user: {
      avatars: {
        square45: 'https://gp1.wac.edgecastcdn.net/801245/s3.amazonaws.com/socialcast_staging/tenants/6/profile_photos/11227/1bwber02sx2vn35452ri_square45.png?AWSAccessKeyId=AKIAI6BMJILEM6YSJ66Q&Expires=1401624000&Signature=JO0Jkw2%2F91aTDLdoveGqzTXDEOg%3D'
      }
      name: 'Mike Silvis'
    }
  }

  ## NOT THE SAME...
  $scope.addUpdate = ->
    $scope.stream.messages.unshift angular.copy($scope.newMessage)
    $scope.newMessage.body = ''
]
