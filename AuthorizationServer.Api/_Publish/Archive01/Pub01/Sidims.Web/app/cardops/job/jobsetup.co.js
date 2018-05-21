(function () {
    'use strict';
    var controllerId = 'JobSetupCO';
    angular
        .module('app')
        .controller('JobSetupCO', JobSetupCO);

    JobSetupCO.$inject = ['$location', '$routeParams', '$scope', 'common', 'datacontext', 'model', 'resourceService'];

    function JobSetupCO($location, $routeParams, $scope, common, datacontext, model, resourceService) {
        /* jshint validthis:true */
        var vm = this;
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);

        //vm.gotoAddVariant = gotoAddVariant;
      
        vm.serverJobs = [];
        vm.serverJob = undefined;
        vm.job = [];
        vm.goBack = goBack;
        vm.gotoJobDetails = gotoJobDetails;
        vm.updateClientList = updateClientList;

        //vm.gotoVariants = gotoVariants;
        vm.save = saveJob;
        vm.clients = [];
        vm.newClientInfo = [];
        vm.jobTypes = [];
        vm.remarks = [];
        vm.sectors = [];
        vm.priority = [];
        vm.sidVariants = [];
        vm.sidCardTypes = [];

        vm.jobNames = [];
        vm.jobName = undefined;

        activate();

        function activate() {
            initLookups();

            var promises = [getRequestedServerJob(), getServerJobs()];
            common.activateController(promises, controllerId)
                .then(function () { log('Activated Variants View'); });
        }

        function initLookups() {
            var lookups = datacontext.lookup.lookupCachedData;

            vm.clients = lookups.clients;
            vm.serviceTypes = lookups.serviceTypes;
            vm.remarks = lookups.remarks;
            vm.sectors = lookups.sectors;
            vm.priority = lookups.priority;
            vm.sidCardTypes = lookups.sidCardTypes;
        }

        function getRequestedServerJob() {
            // Todo: When coming with am id, validate if it already exist.
            var val = $routeParams.id;

            //Todo
            if (val) {
                return datacontext.resourcejob.getByServerJobQueueId(val)
                .then(function (data) {
                    vm.jobName = data;
                    console.log(vm.jobName);
                    return vm.jobName;
                }, function (error) {
                    logError('Unable to get variant ' + val);
                });
            }
        }

        function getServerJobs(forceRefresh) {
            return datacontext.resourcejob.getServerJobQueues(forceRefresh).then(function (data) {
                vm.jobNames = data;
                return vm.jobNames;
            });
        }

        function gotoJobDetails(entity) {
            if (entity && entity.id) {
                $location.path('/co/job-setup/' + entity.id)
            }
        }

        function goBack() { $window.history.back(); }

        function saveJob() {
            var val = $routeParams.id;

            vm.newJob = {
                jobName: vm.jobName.jobName,
                jobNameId: vm.jobName.jobNameId,
                sidSectorId: vm.job.sector.id,
                sidClientId: vm.job.client.id,
                sidCardTypeId: vm.job.cardType.id,
                //priorityId: vm.job.priority.id,
                remarkId: vm.job.remark.id,
                ServiceTypeId: vm.job.serviceType.id,
                quantity: vm.job.quantity
            };

            createEntity(vm.newJob);
        }

        function createEntity(entity) {
            var resourceUri = model.resourceUri.co + '/job/create';
            resourceService.saveResource(resourceUri, entity).then(function (response) {
                vm.serverJob = {};
                vm.job = {};

                gotoJobStatus();
            },
			 function (response) {
			     console.log(response);
			     var errors = [];
			     for (var key in response.data.modelState) {
			         for (var i = 0; i < response.data.modelState[key].length; i++) {
			             errors.push(response.data.modelState[key][i]);
			         }
			     }
			     $scope.message = "Failed to save resource due to:" + errors.join(' ');

                 //Todo: Please remove the method
			     gotoJobStatus();
			 });
        }

        function gotoJobStatus() {
            $location.path('/job-status');
        }

        function updateClientList(entity) {
            vm.newClientInfo = [];
            var uid = vm.job.sector.id;
            angular.forEach(vm.clients, function (todo, key) {
                if (todo.sectorId == uid) {
                    vm.newClientInfo.push(todo);
                }
            });

        }

    }
})();
