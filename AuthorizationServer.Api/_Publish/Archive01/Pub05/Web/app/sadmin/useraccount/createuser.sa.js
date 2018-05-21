(function () {
    'use strict';
    var controllerId = 'CreateUserSA';
    angular
        .module('app')
        .controller('CreateUserSA', CreateUserSA);

    CreateUserSA.$inject = ['$location', '$routeParams', '$scope', 'common', 'datacontext', 'model', 'resourceService'];

    function CreateUserSA($location, $routeParams, $scope, common, datacontext, model, resourceService) {
        /* jshint validthis:true */
        var vm = this;
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);

        vm.roles = [];
        vm.save = save;

        activate();

        function activate() {
            initLookups();
          
            var promises = [];
            common.activateController(promises, controllerId)
                .then(function () { log('Activated JobDetails View'); });
        }

        function initLookups() {
            var lookups = datacontext.lookup.lookupCachedData;
            vm.roles = lookups.roles;
        }
    

        function goBack() { $window.history.back(); }

        function save() {          
            vm.newEntity = {
                firstName: vm.user.firstName,
                lastName: vm.user.lastName,
                email: vm.user.email,
                phoneNumber: vm.user.phoneNumber,
                roleName: vm.user.unit.name,
                userName: vm.user.userName,
                password: vm.user.password,
                confirmPassword: vm.user.confirmPassword
            };

            console.log(vm.newEntity);
            createEntity(vm.newEntity);
        }

        function createEntity(entity) {
            var resourceUri = model.resourceUri.accounts + '/create';
            resourceService.saveResource(resourceUri, entity).then(function (response) {
                console.log(response);
                createUserRole(response.data, entity);
                //$location.path('/in/card-issuance/' + val);
            },
			 function (response) {
			     console.log(response);
			 });
        }

        function createUserRole(entity, oldEntity) {
            var fruits = [];
            vm.newEntity = {
                userId: entity.id,
            };

            var newLength = fruits.push(oldEntity.roleName);
            createRoleAssignEntity(vm.newEntity);
        }

        function createRoleAssignEntity(entity) {
            console.log(entity);
            var resourceUri = model.resourceUri.accounts + '/user/' + entity.userId + '/roles';
            resourceService._updateResourcePartial(resourceUri, entity).then(function (response) {
                console.log(response);
                //createUserRole(response.data);
                //$location.path('/in/card-issuance/' + val);
            },
			 function (response) {
			     console.log(response);
			 });
        }





        function getJobs(forceRefresh) {
            return datacontext.resourcejob.getJobs(forceRefresh).then(function (data) {
                vm.jobs = data;
                console.log(vm.jobs);
                console.log(vm.jobTracker.job);

                // setups all requested items
                vm.cardsetup = {
                    cardType: vm.jobTracker.job.sidCardType.name
                };

                getProductList(vm.jobTracker.job.sidClientId, vm.jobTracker.job.sidCardType.id);

                return vm.jobs;
            });
        }

        function getProductList(clientId, cardTypeId) {
            angular.forEach(vm.products, function (todo, key) {
                if (todo.sidCardTypeId == cardTypeId && todo.sidClientId == clientId) {
                    vm.newProducts.push(todo);
                }
            });
        }


    }


})();
