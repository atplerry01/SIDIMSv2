(function () {
    'use strict';
    var controllerId = 'PrintJobSplitListQA';
    angular
        .module('app')
        .controller('PrintJobSplitListQA', PrintJobSplitListQA);

    PrintJobSplitListQA.$inject = ['$location', '$routeParams', 'common', 'datacontext'];

    function PrintJobSplitListQA($location, $routeParams, common, datacontext) {
        /* jshint validthis:true */
        var vm = this;
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);

        vm.gotoJobDetails = gotoJobDetails;
        vm.jobSplits = [];
        vm.qaIncomingPersos = [];

        activate();

        function activate() {
            var promises = [getJobSplits()];
            common.activateController(promises, controllerId)
                .then(function () { log('Activated Jobs View'); });
        }

        // get JobSplit
        function getJobSplits() {
            var val = $routeParams.trackerId;

            return datacontext.resourcejob.getPrintJobSplitByJobTrackerId(val)
                .then(function (data) {
                    vm.jobSplits = data;
                    console.log(vm.jobSplits);
                }, function (error) {
                    logError('Unable to get JobSplit ' + entityId);
                });
        }

        function gotoJobDetails(entity) {
            if (entity && entity.id) {
                $location.path('/qa/job-check/' + entity.id);
            }
        }

        function goBack() { $window.history.back(); }

    
    }
})();
