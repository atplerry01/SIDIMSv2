(function () {
    'use strict';
    var controllerId = 'MISReportsIN';
    angular
        .module('app')
        .controller('MISReportsIN', MISDispatchReportsIN);

    MISDispatchReportsIN.$inject = ['$location', '$routeParams', 'common', 'config', 'datacontext'];

    function MISDispatchReportsIN($location, $routeParams, common, config, datacontext) {
        /* jshint validthis:true */
        var vm = this;
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);
        var keyCodes = config.keyCodes;

        vm.stockrepots = [];
        vm.gotoReportDetails = gotoReportDetails;

        activate();

        function activate() {
            var promises = [getClientStockReports()];
            common.activateController(promises, controllerId)
                .then(function () {
                    log('Activated Jobs View');
                });
        }

        function getClientStockReports(forceRefresh) {
            return datacontext.inventory.getAllStockReports(forceRefresh).then(function (data) {
                vm.stockrepots = data;
                console.log(vm.stockrepots);
                return vm.stockrepots;
            });
        }

        function gotoReportDetails(entity) {

            console.log(entity);

            if (entity && entity.id) {
                $location.path('in/mis/card/mis-reportdetail/' + entity.sidProductId);
            }
        }
     

        
    }
})();
