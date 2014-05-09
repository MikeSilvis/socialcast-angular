//= require angular
//= require angular-animate
//= require angular-resource
//= require angular-route
//= require angular-sanitize
//= require_tree ./plugins
//= require_self
//= require_tree .

token = '7abb2f1fb2ae3062e69a7314d7d94ba2'
socialcast = angular.module('socialcast',
              [
                'ngResource',
                'ngRoute',
                'infinite-scroll',
                'ngSanitize',
                'mentionFilter',
                'newLineFilter'
              ]
            );
