(function () {
    'use strict';
    var controllerId = 'MISReportsIN';
    angular
        .module('app')
        .controller('MISReportsIN', MISReportsIN);

    MISReportsIN.$inject = ['$location', '$routeParams', 'common', 'config', 'datacontext'];

    function MISReportsIN($location, $routeParams, common, config, datacontext) {
        /* jshint validthis:true */
        var vm = this;
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);
        var keyCodes = config.keyCodes;

        
        vm.products = [];
        vm.stockrepots = [];
        vm.gotoClientProducts = gotoClientProducts;
        vm.gotoClientVault = gotoClientVault;
        vm.gotoStockReportLog = gotoStockReportLog;

        vm.productId = 0;
        vm.productName = '';

        vm.clients = [];
        vm.clientSearch = '';
        vm.filteredClients = [];
        vm.search = search;

        vm.clientCount = 0;
        vm.clientFilteredCount = 0;
        vm.paging = {
            currentPage: 1,
            maxPagesToShow: 10,
            pageSize: 10
        };
        vm.pageChanged = pageChanged;

        Object.defineProperty(vm.paging, 'pageCount', {
            get: function () {
                return Math.floor(vm.serverJobFilteredCount / vm.paging.pageSize) + 1;
            }
        });


        activate();

        function activate() {
            var promises = [getClients(), getProducts(), getCardIssuances(), getJobs()];
            common.activateController(promises, controllerId)
                .then(function () {
                    log('Activated Jobs View');
                });
        }

        //get clients
        function getClients(forceRefresh) {
            return datacontext.cardopslookup.getClients(forceRefresh, vm.paging.currentPage, vm.paging.pageSize, vm.clientSearch).then(function (data) {
                vm.clients = vm.filteredClients = data;
                getFirstClientProducts();
                console.log(vm.clients);
                if (!vm.serverJobCount || forceRefresh) {
                    //getServerJobCount();
                }
                //getServerJobFilteredCount();
                return data;
            });
        }

        function getClientCount() {
            return datacontext.resourcejob.getClientCount().then(function (data) {
                return vm.clientCount = data;
            });
        }

        function getClientFilteredCount() {
            vm.clientFilteredCount = datacontext.resourcejob.getServerJobFilteredCount(vm.serverJobsSearch);
        }

        function search($event) {
            if ($event.keyCode === keyCodes.esc) { vm.clientSearch = ''; }
            getClients();
        }

        function pageChanged(page) {
            if (!page) { return; }
            vm.paging.currentPage = page;
            getClients();
        }


        ///getProducts
        function getFirstClientProducts() {
            console.log(vm.clients[0].name);
            getProductWithPredicate(vm.clients[0].name);
        }

        function getProducts(forceRefresh) {
            return datacontext.cardopslookup.getProducts(forceRefresh).then(function (data) {
                vm.products = data;
                return vm.products;
            });
        }

        function getProductWithPredicate(pred, forceRefresh) {
            return datacontext.cardopslookup.getProductWithPredicate(forceRefresh, pred).then(function (data) {
                vm.products = data;
                console.log(vm.products[0]);
                vm.productId = vm.products[0].id;
                vm.productName = vm.products[0].name;

                getVaultReports(vm.products[0].id);
                getClientStockReports(vm.products[0].id);
                return vm.products;
            });
        }

      

        function gotoClientProducts(entity) {
            getProductWithPredicate(entity.name);
        }
     
        function getJobs(forceRefresh) {
            return datacontext.inventjob.getJobs(forceRefresh).then(function (data) {
                vm.jobs = data;
                return vm.jobs;
            });
        }
      
        function gotoClientVault(entity) {
            vm.productId = entity.id;
            vm.productName = entity.name;

            getVaultReports(entity.id);
            getClientStockReports(entity.id);
        }
        
        function gotoStockReportLog(entity) {
            getClientStockLogs(entity.id);
        }

        ///
        function getVaultReports(pred, forceRefresh) {
            return datacontext.inventory.getClientVaultReports(pred, forceRefresh).then(function (data) {
                vm.vaultrepots = data;
                console.log(vm.vaultrepots);
                return vm.vaultrepots;
            });
        }

        function getClientStockReports(pred, forceRefresh) {
            return datacontext.inventory.getClientStockReports(pred, forceRefresh).then(function (data) {
                vm.stockreports = data;
                console.log(vm.stockreports);
                //getClientStockLogs(vm.stockreports.id);
                return vm.stockreports;
            });
        }

        function getClientStockLogs(pred, forceRefresh) {
            return datacontext.inventory.getClientStockLogByStockReportId(pred, forceRefresh).then(function (data) {
                vm.stockreportlogs = data;
                console.log(vm.stockreportlogs);
                return vm.stockreportlogs;
            });
        }

        function getCardIssuances(forceRefresh) {
            return datacontext.inventjob.getCardIssuances(forceRefresh).then(function (data) {
                vm.cardissuances = data;
                console.log(vm.cardissuances);
                return vm.cardissuances;
            });
        }


    }
})();
