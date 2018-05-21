﻿(function () {
    'use strict';
    var controllerId = 'JobStatus';
    angular
        .module('app')
        .controller('JobStatus', JobStatus);

    JobStatus.$inject = ['$location', '$route', '$routeParams', '$scope', 'authService', 'common', 'config', 'datacontext', 'model', 'resourceService'];

    function JobStatus($location, $route, $routeParams, $scope, authService, common, config, datacontext, model, resourceService) {
        /* jshint validthis:true */
        var vm = this;
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);
        var keyCodes = config.keyCodes;

        vm.jobTrackers = [];
        vm.jobs = [];
        vm.gotoAuditTrail = gotoAuditTrail;
        vm.gotoUpdate = gotoUpdate;
        vm.refresh = refresh;
        vm.flagJob = flagJob;

        vm.filteredJobTrackers = [];
        vm.jobTrackersSearch = '';
        vm.jobTrackersFilter = jobTrackersFilter;
        vm.search = search;

        vm.jobTrackerCount = 0;
        vm.jobTrackerFilteredCount = 0;
        vm.paging = {
            currentPage: 1,
            maxPagesToShow: 10,
            pageSize: 15
        };
        vm.pageChanged = pageChanged;

        vm.currentRole = undefined;

        Object.defineProperty(vm.paging, 'pageCount', {
            get: function () {
                return Math.floor(vm.jobTrackerFilteredCount / vm.paging.pageSize) + 1;
            }
        });


        activate();

        function activate() {
            initLookups();
            refresh(); //Todo: remove

            var promises = [getJobTrackers(true), getJobs(true), roleSetups()];
            common.activateController(promises, controllerId)
                .then(function () {
                    //applyFilter = common.createSearchThrottle(vm, 'serverJobs');
                    //if (vm.jobTrackersSearch) { applyFilter(true); }
                    log('Activated Job Status View');
                });
        }

        function roleSetups() {
            var auth = authService.authentication;
            var page = auth.page;
            vm.currentRole = page;
        }

        function initLookups() {
            var lookups = datacontext.lookup.lookupCachedData;
            console.log(lookups);
        }

        function getJobTrackers(forceRefresh) {
            return datacontext.resourcejob.getJobTrackers(forceRefresh,
                vm.paging.currentPage, vm.paging.pageSize, vm.jobTrackersSearch)
                .then(function (data) {
                    vm.jobTrackers = vm.filteredJobTrackers = data;
                    getJobTrackerFilteredCount();
                    if (!vm.jobTrackerCount || forceRefresh) {
                        getJobTrackerCount();
                    }
                    return data;
                });
        }

        function getJobTrackerCount() {
            return datacontext.resourcejob.getJobTrackerCount()
                .then(function (data) {
                    return vm.jobTrackerCount = data;
                });
        }

        function getJobTrackerFilteredCount() {
            vm.jobTrackerFilteredCount = datacontext.resourcejob.getJobTrackerFilteredCount(vm.jobTrackersSearch);
        }

        function search($event) {
            if ($event.keyCode === keyCodes.esc) {
                vm.jobTrackersSearch = '';
                applyFilter(true);
            } else {
                applyFilter();
            }

        }

        function applyFilter() {
            vm.filteredJobTrackers = vm.jobTrackers.filter(jobTrackersFilter);
        }

        function jobTrackersFilter(entity) {
            var textContains = common.textContains;
            var searchText = vm.jobTrackersSearch;

            var isMatch = searchText ?
                textContains(entity.job.jobName, searchText)
                    || textContains(entity.job.jobName, searchText)
                : true;

            return isMatch;
        }

        function pageChanged(page) {
            if (!page) { return; }
            vm.paging.currentPage = page;
            getJobTrackers();
        }
        

        function getJobs(forceRefresh) {
            return datacontext.resourcejob.getJobs(forceRefresh).then(function (data) {
                vm.jobs = data;
                return vm.jobs;
            });
        }

        function goBack() { $window.history.back(); }

        function gotoAuditTrail(entity) {
            window.open('#/job/audit-trail/' + entity.id, '_blank');
        }

        function gotoUpdate(entity) {
            $location.path('/co/job-setup-update/' + entity.jobId)
        }

        function flagJob(entity) {
            console.log(entity);
            $location.path('/job-flag/' + entity.id);
        }

        function refresh() {
            getJobTrackers(true);
            getJobs(true);
        }

    }

})();