//= require angular
//= require angular-animate
//= require angular-resource
//= require angular-route
//= require angular-sanitize
//= require_tree ./plugins
//= require_self
//= require_tree .

token = 'cc7afc7a136862c3337d82dd9f22aa93'
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
