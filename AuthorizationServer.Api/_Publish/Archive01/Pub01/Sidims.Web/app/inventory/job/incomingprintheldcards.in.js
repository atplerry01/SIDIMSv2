(function () {
    'use strict';
    var controllerId = 'IncomingPrintHeldCardIN';
    angular
        .module('app')
        .controller('IncomingPrintHeldCardIN', IncomingPrintHeldCardIN);

    IncomingPrintHeldCardIN.$inject = ['$location', '$scope', 'common', 'datacontext', 'model', 'resourceService'];

    function IncomingPrintHeldCardIN($location, $scope, common, datacontext, model, resourceService) {
        /* jshint validthis:true */
        var vm = this;
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);

        vm.confirmHeld = confirmHeld;
        vm.heldcards = [];

        activate();

        function activate() {
            
            var promises = [getHeldCards(), getJobs()];
            common.activateController(promises, controllerId)
                .then(function () { log('Activated Jobs View'); });
        }



        function getHeldCards(forceRefresh) {
            return datacontext.inventjob.getIncomingHeldCards(forceRefresh).then(function (data) {
                vm.heldcards = data;
                console.log(vm.heldcards);
                return vm.heldcards;
            });
        }

        function getJobs(forceRefresh) {
            return datacontext.inventjob.getJobs(forceRefresh).then(function (data) {
                vm.jobs = data;
                return vm.jobs;
            });
        }

        function gotoJobDetails(entity) {
            if (entity && entity.id) {

                console.log(entity);
                //$location.path('/in/held-card/' + entity.id)
            }
        }


        function confirmHeld(entity) {
            var newEntity = {
                id: entity.id,
            };

            createEntity(newEntity);
        }

        function createEntity(entity) {
            var resourceUri = model.resourceUri.inventory + '/heldcard-receipt/create';
            resourceService.saveResource(resourceUri, entity).then(function (response) {
                console.log(response);
                getHeldCards();               
            },
			 function (response) {
			     console.log(response);
			     $scope.message = "Failed to save resource due to:" + response;
			 });
        }

        function goBack() { $window.history.back(); }

    }
})();
