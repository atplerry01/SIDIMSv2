(function () {
    'use strict';
    var serviceId = 'repository.cardengrjob';

    angular.module('app').factory(serviceId,
        ['$routeParams', 'common', 'authService', 'model', 'repository.abstract', RepositoryResource]);

    function RepositoryResource($routeParams, common, authService, model, AbstractRepository) {
        var entityName = model.entityNames.person;
        var EntityQuery = breeze.EntityQuery;
        var filterValue = authService.authentication.userName;
        var Predicate = breeze.Predicate;
        var $q = common.$q;
        

        function Ctor(mgr) {
            this.serviceId = serviceId;
            this.entityName = entityName;
            this.manager = mgr;
            // Exposed data access functions
            this.getById = getById;
            
            this.getIncomingPersos = getIncomingPersos;
            this.getIncomingPrints = getIncomingPrints;
            this.getIncomingPersoByBatchTrackers = getIncomingPersoByBatchTrackers;
            this.getResumableNewPersos = getResumableNewPersos;
            this.getResumablePartialPersos = getResumablePartialPersos;

            this.getCardIssuanceLogs = getCardIssuanceLogs;


        }

        AbstractRepository.extend(Ctor);

        return Ctor;

        function getById(id, forceRemote) {
            //var forceRemote;
            return this._getById(entityName, id, forceRemote);
        }


        function getIncomingPersos(forceRemote) {
            var self = this;
            var entity = [];
            var orderBy;

            return EntityQuery.from('CardEngrIncomingPersos')
                .select('id, jobId')
                .toType('JobTracker')
                .using(self.manager).execute()
                .then(querySucceeded, self._queryFailed);

            function querySucceeded(data) {
                entity = data.results;
                self._areItemsLoaded(true);
                //self.log('Retrieved [JobTracker Partials] from remote data source', entity.length, true);
                return entity;
            }
        }

        function getIncomingPersoByBatchTrackers(forceRemote) {
            var self = this;
            var entity = [];
            var orderBy;

            return EntityQuery.from('CardEngrIncomingPersoByBatchTrackers')
                .select('id, jobId, jobTrackerId, cardIssuanceId')
                .toType('JobBatchTracker')
                .using(self.manager).execute()
                .then(querySucceeded, self._queryFailed);

            function querySucceeded(data) {
                entity = data.results;
                self._areItemsLoaded(true);
                //self.log('Retrieved [JobTracker Partials] from remote data source', entity.length, true);
                return entity;
            }
        }


        function getIncomingPrints(forceRemote) {
            var self = this;
            var entity = [];
            var orderBy;

            return EntityQuery.from('CardEngrIncomingPrints')
                .select('id, jobId')
                .toType('JobTracker')
                .using(self.manager).execute()
                .then(querySucceeded, self._queryFailed);

            function querySucceeded(data) {
                entity = data.results;
                self._areItemsLoaded(true);
                //self.log('Retrieved [JobTracker Partials] from remote data source', entity.length, true);
                return entity;
            }
        }

        function getResumableNewPersos(forceRemote) {
            var self = this;
            var entity = [];
            var orderBy;

            return EntityQuery.from('CardEngrResumeNewPersos')
                .select('id, jobId')
                .toType('JobTracker')
                .using(self.manager).execute()
                .then(querySucceeded, self._queryFailed);

            function querySucceeded(data) {
                entity = data.results;
                self._areItemsLoaded(true);
                //self.log('Retrieved [JobTracker Partials] from remote data source', entity.length, true);
                return entity;
            }
        }

        function getResumablePartialPersos(forceRemote) {
            var self = this;
            var entity = [];
            var orderBy;

            return EntityQuery.from('CardEngrResumePartialPersos')
                .select('id, jobId')
                .toType('JobTracker')
                .using(self.manager).execute()
                .then(querySucceeded, self._queryFailed);

            function querySucceeded(data) {
                entity = data.results;
                self._areItemsLoaded(true);
                //self.log('Retrieved [JobTracker Partials] from remote data source', entity.length, true);
                return entity;
            }
        }


        function getCardIssuanceLogs(jobId, forceRemote) {
            var self = this;
            var entity = [];
            var orderBy;

            return EntityQuery.from('CardIssuanceLogs')
                .select('id, cardIssuanceId, collectorId, issuanceId, issuanceTypeId, quantityIssued, quantityRemain, totalQuantity')
                //.withParameters({ jobId: jobId })
                .toType('CardIssuanceLog')
                .using(self.manager).execute()
                .then(querySucceeded, self._queryFailed);

            function querySucceeded(data) {
                entity = data.results;
                self._areItemsLoaded(true);
                //self.log('Retrieved [Issuance Log Partials] from remote data source', entity.length, true);
                return entity;
            }
        }


    }
})();