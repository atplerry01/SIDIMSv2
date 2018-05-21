﻿(function () {
    'use strict';
    var controllerId = 'PrintDeliveryDetailQC';
    angular
        .module('app')
        .controller('PrintDeliveryDetailQC', PrintDeliveryDetailQC);

    PrintDeliveryDetailQC.$inject = ['$location', '$routeParams', '$scope', 'common', 'datacontext', 'model', 'resourceService'];

    function PrintDeliveryDetailQC($location, $routeParams, $scope, common, datacontext, model, resourceService) {
        /* jshint validthis:true */
        var vm = this;
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);

        vm.del = {
            boxQty: 1
        };

        vm.ceJobSplit = undefined;
        vm.jobSplitCEAnalysis = [];
        vm.jobSplitQCAnalysis = [];
        vm.cardissuancelogs = [];
        vm.job = [];
        vm.jobSplits = [];
        vm.save = save;
        vm.updateJobSplit = updateJobSplit;
        vm.saveDeliverable = saveDeliverable;
        vm.defaultSave = defaultSave;
        vm.confirmCEDelivery = confirmCEDelivery;
        vm.displayJobSplitDetails = displayJobSplitDetails;

        vm.jobSplitDetail = false;
        vm.carddeliverylogs = [];
        vm.ceCarddeliverylogs = [];

        vm.deleteDelivery = deleteDelivery;

        activate();

        function activate() {
            var promises = [getRequestedJob(), getCardDeliveryLogs(), getProductionUsers()];
            common.activateController(promises, controllerId)
                .then(function () { log('Activated Jobs View'); });
        }



        function getRequestedJob() {
            var val = $routeParams.trackerId;
            return datacontext.resourcejob.getJobTrackerById(val)
                .then(function (data) {
                    vm.jobTracker = data;
                    getJobSplits(vm.jobTracker.id);
                    getPrintCEJobSplitAnalysis(vm.jobTracker.id);
                    //getCardIssuanceByJobId(vm.jobTracker.jobId);
                    getCardIssuanceLogByTrackerId(vm.jobTracker.id);
                    getJobs(vm.jobTracker.jobId);
                }, function (error) {
                    logError('Unable to get JobTracker ' + val);
                });
        }

        function getCardIssuanceByJobId(entityId, forceRefresh) {
            return datacontext.inventjob.getCardIssuanceByJobId(entityId, forceRefresh).then(function (data) {
                vm.cardIssuance = data[0];
                console.log(vm.cardIssuance);
                return vm.cardIssuance;
            });
        }

        function getCardIssuanceLogByTrackerId(entityId, forceRefresh) {
            return datacontext.inventjob.getCardIssuanceLogByTrackerId(entityId, forceRefresh).then(function (data) {
                vm.cardIssuanceLog = data[0];
                console.log(vm.cardIssuanceLog);
                return vm.cardIssuanceLog;
            });
        }

        function getPrintCEJobSplitAnalysis(entityId) {
            return datacontext.resourcejob.getIncomingPrintCESplitAnalysisByJobTrackerId(entityId)
                .then(function (data) {
                    vm.jobSplitCEAnalysis = data;
                    vm.getRangeTotal = getTotal();
                    vm.getQuantityGood = getTotalGood();
                    vm.getQuantityBad = getTotalBad();
                    vm.getQuantityHeld = getTotalHeld();
                    console.log(vm.jobSplitCEAnalysis);
                }, function (error) {
                    logError('Unable to get JobSplit ' + entityId);
                });
        }

        function getCardDeliveryLogs(forceRefresh) {
            var val = $routeParams.trackerId;
            return datacontext.resourcejob.getPrQCCardDeliveryLogByTrackerId(val, forceRefresh).then(function (data) {
                vm.carddeliverylogs = data;
                console.log(vm.carddeliverylogs);
                return vm.carddeliverylogs;
            });
        }

        function getJobSplits(entityId) {
            return datacontext.resourcejob.getJobSplitByJobTrackerId(entityId)
                .then(function (data) {
                    vm.jobSplits = data;
                }, function (error) {
                    logError('Unable to get JobSplit ' + entityId);
                });
        }

        function fillRangeBox(entity) {
            var totalGood = getTotalGood();
            vm.del.rangeFrom = 1;
            vm.del.rangeTo = totalGood;
        }

        // get CE Deliverables
        function getCECardDeliverables(forceRefresh) {
            var val = $routeParams.trackerId;
            return datacontext.resourcejob.getCECardDeliveryLogByTrackerId(val, forceRefresh).then(function (data) {
                vm.ceCarddeliverylogs = data;
                return vm.ceCarddeliverylogs;
            });
        }

        function refreshDeliveryLog() {
            //getCECardDeliverables();
        }

        function getJobs(entityId) {
            return datacontext.resourcejob.getJobById(entityId)
                .then(function (data) {
                    vm.jobs = data;
                    fillRangeBox(vm.jobs);
                }, function (error) {
                    logError('Unable to get Job ' + val);
                });
        }

        function displayJobSplitDetails(entity) {
            vm.jobSplitDetail = true;
            getRequestedJobSplitCEAnalysisJob(entity.id);
        }

        function getRequestedJobSplitCEAnalysisJob(entityId) {
            return datacontext.resourcejob.getJobSplitPrintCEAnalysisById(entityId)
                .then(function (data) {
                    vm.ceJobSplit = data;
                    console.log(vm.ceJobSplit);
                }, function (error) {
                    logError('Unable to get jobSplitCEAnalysis ' + val);
                });
        }

        function updateJobSplit() {
            //vm.ceJobSplit
            var newEntity = {
                id: vm.ceJobSplit.id,
                jobSplitId: vm.ceJobSplit.jobSplitId,
                quantityGood: (vm.ceJobSplit.quantityGood) - (vm.ceJobSplit.quantityHeld - vm.ceJobSplit.quantityBad),
                quantityHeld: vm.ceJobSplit.newQuantityHeld,
                quantityBad: vm.ceJobSplit.newQuantityBad,
                createdById: vm.ceJobSplit.createdById,
                createdOn: vm.ceJobSplit.createdOn
            };
            updateJobSplitEntity(newEntity);
        }

        function updateJobSplitEntity(entity) {
            var resourceUri = model.resourceUri.qac + '/jobslit-qc-analysis/update';
            resourceService.updateResource(resourceUri, entity).then(function (response) {
                //getQCJobSplitAnalysis(vm.jobTracker.id);
                getPrintCEJobSplitAnalysis(vm.jobTracker.id);
                getRequestedJob();
            },
			 function (response) {
			     $scope.message = "Failed to save resource due to:";
			 });
        }


        function goBack() { $window.history.back(); }

        function save() {
            var val = $routeParams.trackerId;

            vm.newEntity = {
                jobTrackerId: val,
                startFrom: 0, // Todo
                endPoint: 0,
            };

            createEntity(vm.newEntity);
        }

        function createEntity(entity) {

            var resourceUri = model.resourceUri.qac + '/jobrun/create';
            resourceService.saveResource(resourceUri, entity).then(function (response) {
                $location.path('/qc/incoming-persos');
            },
			 function (response) {
			     $scope.message = "Failed to save resource due to:";
			 });
        }

        function defaultSave() {
            var entity = {
                jobTrackerId: $routeParams.trackerId,
                rangeFrom: 1,
                rangeTo: vm.cardIssuance.totalQuantityIssued
            };

            deliveryCreateEntity(entity);
            $location.path('/qc/incoming-persos')
        }

        function getTotalCardDeliveryLog() {
            var total = 0;
            for (var i = 0; i < vm.carddeliverylogs.length; i++) {
                var unitEntity = vm.carddeliverylogs[i];
                total += ((unitEntity.rangeTo - unitEntity.rangeFrom) + 1);
            }
            return total;
        }


        function saveDeliverable() {
            var entity = {
                jobTrackerId: $routeParams.trackerId,
                rangeFrom: vm.del.rangeFrom,
                rangeTo: vm.del.rangeTo,
                description: vm.del.description,
                boxQty: vm.del.boxQty
            };

            var rangeVal = ((vm.del.rangeTo - vm.del.rangeFrom) + 1);
            var previousDelivery = getTotalCardDeliveryLog();
            var totalDeliveryLog = (previousDelivery + rangeVal);

            ////Todo: plus heldcard
            if (totalDeliveryLog > vm.cardIssuanceLog.quantityIssued) {
                console.log('Quantity Surpass');
            } else {
                deliveryCreateEntity(entity);
            }           
        }

        function deliveryCreateEntity(entity) {
            var resourceUri = model.resourceUri.qac + '/printdeliverylog/create';
            resourceService.saveResource(resourceUri, entity).then(function (response) {
                getCardDeliveryLogs();
                vm.del = {
                    boxQty: 1
                };
            },
                function (response) {
                    console.log(response);
                });
        }


        function confirmCEDelivery(entity) {
            if (entity && entity.id) {
                var newEntity = {
                    id: entity.id
                };

                updateResourceEntity(newEntity);
            }
        }

        function updateResourceEntity(entity) {
            var resourceUri = model.resourceUri.qac + '/carddeliverylogconfirm/create';
            resourceService.saveResource(resourceUri, entity).then(function (response) {
                getCECardDeliverables();
            },
                function (response) {
                    console.log(response);
                });
        }

        function getProductionUsers(forceRefresh) {
            return datacontext.inventaccount.getProductionStaffs(forceRefresh).then(function (data) {
                vm.users = data;
                return vm.users;
            });
        }


        function deleteDelivery(entity) {
            if (entity && entity.id) {
                var newEntity = {
                    id: entity.id,
                    jobTrackerId: $routeParams.trackerId
                };
                deleteDeliveryEntity(newEntity);
            }
        }

        function deleteDeliveryEntity(entity) {
            var resourceUri = model.resourceUri.qac + '/carddeliverylog/delete';
            resourceService.saveResource(resourceUri, entity).then(function (response) {
                getCardDeliveryLogs();
            },
                function (response) {
                    console.log(response);
                });
        }

        function getTotal(forceRefresh) {
            var total = 0;
            for (var i = 0; i < vm.jobSplitCEAnalysis.length; i++) {
                var unitEntity = vm.jobSplitCEAnalysis[i];
                total += ((unitEntity.jobSplit.rangeTo - unitEntity.jobSplit.rangeFrom) + 1);
            }
            return total;
        }

        function getTotalGood(forceRefresh) {
            var total = 0;
            for (var i = 0; i < vm.jobSplitCEAnalysis.length; i++) {
                var unitEntity = vm.jobSplitCEAnalysis[i];
                total += unitEntity.quantityGood;
            }
            return total;
        }

        function getTotalBad(forceRefresh) {
            var total = 0;
            for (var i = 0; i < vm.jobSplitCEAnalysis.length; i++) {
                var unitEntity = vm.jobSplitCEAnalysis[i];
                total += unitEntity.quantityBad;
            }
            return total;
        }

        function getTotalHeld(forceRefresh) {
            var total = 0;
            for (var i = 0; i < vm.jobSplitCEAnalysis.length; i++) {
                var unitEntity = vm.jobSplitCEAnalysis[i];
                total += unitEntity.quantityHeld;
            }
            return total;
        }

        $scope.IsVisible = false;
        $scope.IsRangeVisible = false;

        $scope.ShowHide = function () {
            $scope.IsVisible = $scope.ShowPassport;
        }

        $scope.ShowHideRange = function () {
            $scope.IsRangeVisible = $scope.ShowPassportRange;
        }

    }
})();
