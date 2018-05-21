(function () {
    'use strict';
    var controllerId = 'UserAccountSA';
    angular
        .module('app')
        .controller('UserAccountSA', UserAccountSA);

    UserAccountSA.$inject = ['$location', '$scope', 'common', 'datacontext', 'model', 'resourceService'];

    function UserAccountSA($location, $scope, common, datacontext, model, resourceService) {
        /* jshint validthis:true */
        var vm = this;
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);

        vm.gotoAccountCreate = gotoAccountCreate;

        activate();

        function activate() {

            var promises = [useraccounts()];
            common.activateController(promises, controllerId)
                .then(function () { log('Activated Jobs View'); });
        }

        function useraccounts(forceRefresh) {
            return datacontext.sadminaccount.getAccountPatials(forceRefresh).then(function (data) {
                vm.accounts = data;
                console.log(vm.accounts);
                return vm.accounts;
            });
        }

   
        function goBack() { $window.history.back(); }

        function gotoAccountCreate() {
            $location.path('/sa/create-user/new');
        }

    }
})();
