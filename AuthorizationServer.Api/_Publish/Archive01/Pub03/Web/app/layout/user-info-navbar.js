(function () {
    'use strict';
    var controllerId = 'login';

    angular
        .module('app')
        .controller('userInfoNavBar', userInfoNavBar);

    userInfoNavBar.$inject = ['$location', '$route', '$scope', 'authService', 'common', 'config'];

    function userInfoNavBar($location, $route, $scope, authService, common, config) {
        /* jshint validthis:true */
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);
        var $q = common.$q;
        var vm = this;
        var keyCodes = config.keyCodes;


        vm.search = search;


        vm.auth = authService.authentication;
        vm.roles = [];

        $scope.logOut = function () {

            authService.logOut();
            $location.path('/login');
        }

        activate();

        function activate() {
            common.activateController([roleSetups()], controllerId)
                .then(function () {
                    //log('Activated Login View');
                });
        }

        function roleSetups() {

            if (vm.auth.fullName == undefined || vm.auth.fullName === '') {
                console.log('empty');
                $route.reload();
            }
           
            if (vm.auth.roles) {
                var roles = JSON.parse(vm.auth.roles);
                angular.forEach(roles, function (todo) {
                    vm.roles.push({
                        name: todo
                    });
                });
            } else {
                $route.reload();
            }

        }


        function search($event) {
            console.log('enter');
            if ($event.keyCode === keyCodes.esc) {
                vm.searchText = '';
                return;
            }

            if ($event.type === '' || $event.keyCode === keyCodes.enter) {
                console.log('enter');
                var route = 'products/search/';
                $location.path(route + vm.searchText);
            }
        }

    }
})();
