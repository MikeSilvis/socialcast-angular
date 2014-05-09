//= require angular
//= require angular-animate
//= require angular-resource
//= require angular-route
//= require angular-sanitize
//= require_tree ./plugins
//= require_self
//= require_tree .

token = '375ca32d0df4ffda969e7809878562f5'
socialcast = angular.module('socialcast',
              [
                'classy',
                'ngResource',
                'ngRoute',
                'infinite-scroll',
                'ngSanitize',
                'mentionFilter',
                'newLineFilter'
              ]
            );
