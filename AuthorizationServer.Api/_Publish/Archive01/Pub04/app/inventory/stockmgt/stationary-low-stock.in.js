﻿(function () {
    'use strict';
    var controllerId = 'StationaryLowStockIN';
    angular
        .module('app')
        .controller('StationaryLowStockIN', StationaryLowStockIN);

    StationaryLowStockIN.$inject = ['$location', 'common', 'datacontext'];

    function StationaryLowStockIN($location, common, datacontext) {
        /* jshint validthis:true */
        var vm = this;
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);

        vm.gotoJobDetails = gotoJobDetails;
        vm.jobs = [];

        activate();

        function activate() {
            
            var promises = [getJobs()];
            common.activateController(promises, controllerId)
                .then(function () { log('Activated Jobs View'); });
        }

        function getJobs(forceRefresh) {
            return datacontext.resourcejob.getJobs(forceRefresh).then(function (data) {
                vm.jobs = data;
                console.log(vm.jobs);
                return vm.jobs;
            });
        }

        function gotoJobDetails(entity) {
            if (entity && entity.id) {
                $location.path('/co/job/' + entity.id)
            }
        }

        function goBack() { $window.history.back(); }

    
    }
})();
