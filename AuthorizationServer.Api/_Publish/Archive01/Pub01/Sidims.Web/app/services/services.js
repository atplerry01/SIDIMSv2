(function () {
    'use strict';

    var app = angular.module('app');

    app.service('$menuItems', function (authService, localStorageService) {
        this.menuItems = [];
        

        var $menuItemsRef = this;

        var menuItemObj = {
            parent: null,

            title: '',
            link: '', // starting with "./" will refer to parent link concatenation
            state: '', // will be generated from link automatically where "/" (forward slashes) are replaced with "."
            icon: '',

            isActive: false,
            label: null,

            menuItems: [],

            setLabel: function (label, color, hideWhenCollapsed) {
                if (typeof hideWhenCollapsed == 'undefined')
                    hideWhenCollapsed = true;

                this.label = {
                    text: label,
                    classname: color,
                    collapsedHide: hideWhenCollapsed
                };

                return this;
            },

            addItem: function (title, link, icon) {
                var parent = this,
					item = angular.extend(angular.copy(menuItemObj), {
					    parent: parent,

					    title: title,
					    link: link,
					    icon: icon
					});

                if (item.link) {
                    if (item.link.match(/^\./))
                        item.link = parent.link + item.link.substring(1, link.length);

                    if (item.link.match(/^-/))
                        item.link = parent.link + '-' + item.link.substring(2, link.length);

                    item.state = $menuItemsRef.toStatePath(item.link);
                }

                this.menuItems.push(item);

                return item;
            }
        };

        this.addItem = function (title, link, icon) {
            var item = angular.extend(angular.copy(menuItemObj), {
                title: title,
                link: link,
                state: this.toStatePath(link),
                icon: icon
            });

            this.menuItems.push(item);

            return item;
        };

        this.getAll = function () {
            return this.menuItems;
        };

        this.createSuperAdminMenu = function () {

            var dashboard = this.addItem('Dashboard', '/sa/dashboard', 'linecons-cog');
            var account = this.addItem('Accounts', '/sa/accounts/user-profiles', 'linecons-cog');

            var cardops = this.addItem('Card Operations', '/sa/accounts/user-profiles', 'linecons-cog');
            var inventory = this.addItem('Inventory', '/sa/accounts/user-profiles', 'linecons-cog');
            var cardengr = this.addItem('Card Engineer', '/sa/accounts/user-profiles', 'linecons-cog');
            var printing = this.addItem('Printing', '/sa/accounts/user-profiles', 'linecons-cog');
            var qa = this.addItem('Quality Assurance', '/sa/accounts/user-profiles', 'linecons-cog');
            var qc = this.addItem('Quality Control', '/sa/accounts/user-profiles', 'linecons-cog');
            var mailing = this.addItem('Mailing', '/sa/accounts/user-profiles', 'linecons-cog');
            var dispatch = this.addItem('Card Engineer', '/sa/accounts/user-profiles', 'linecons-cog');
            var cs = this.addItem('Customer Service', '/sa/accounts/user-profiles', 'linecons-cog');
            var finance = this.addItem('Finance', '/sa/accounts/user-profiles', 'linecons-cog');
            var client = this.addItem('Clients Management', '/sa/accounts/user-profiles', 'linecons-cog');
       
            // #region Dashboard

            dashboard.addItem('Academics Dashboard', '-/variant-1');
            dashboard.addItem('Social Dashboard', '-/variant-2');

            // #endregion

            // #region CardOps

            cardops.addItem('Job List', '/sa/classrooms', 'fa-angle-right');
            
            // #endregion
           
            // #region Inventory

            var invstockmagr = inventory.addItem('Stock Management', '-/books'); // "-/" will append parents link
            var invwastemgr = inventory.addItem('Waste Management', '-/books'); // "-/" will append parents link

            invstockmagr.addItem('Books', '/sa/elibrary/ebooks');
            invstockmagr.addItem('Journals', '/sa/elibrary/journals');

            invwastemgr.addItem('Shelf Books', '/sa/library/books');
            invwastemgr.addItem('Borrowed Books', '/sa/library/borrowed');

            // #endregion

            // #region Card Engr

            cardengr.addItem('National Exams', '/sa/cbt/national-exams');
            cardengr.addItem('School Exams & Test', '/sa/cbt/school-exams');

            // #endregion

            // #region Printing

            printing.addItem('Job List', '/sa/cbt/national-exams');

            // #endregion

            // #region Quality Assurance

            qa.addItem('Job List', '/sa/cbt/national-exams');

            // #endregion

            // #region Quality Control

            qc.addItem('Job List', '/sa/cbt/national-exams');

            // #endregion

            // #region Mailing

            mailing.addItem('Job List', '/sa/cbt/national-exams');
            // #endregion

            // #region Dispatch

            dispatch.addItem('Job List', '/sa/cbt/national-exams');
            // #endregion

            // #region Customer Service

            cs.addItem('Job List', '/sa/cbt/national-exams');
            // #endregion

        }

        this.createCardOpsMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var jobs = this.addItem('Jobs Management', '/co/jobs', 'fa fa-tasks fa-fw');
            var lookups = this.addItem('Lookups', '/co/lookups', 'fa fa-sort-alpha-asc fa-fw');

            var flags = this.addItem('Flagged Jobs', '/pr/flags', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/co/flagged-jobs', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Accounts
            jobs.addItem('All JobLists', '/co/jobs', 'fa-angle-right');
            jobs.addItem('Non Perso JobLists', '/co/nonperso-jobs', 'fa-angle-right');
            jobs.addItem('Setup New Job', '/co/job-setups', 'fa-angle-right');
       
            // Subitems of Lookups
            lookups.addItem('Card Variants', '/co/lookups/card-variants', 'fa-angle-right');
            lookups.addItem('Clients', '/co/lookups/clients', 'fa-angle-right');
            lookups.addItem('Card Types', '/co/lookups/card-types', 'fa-angle-right');
            lookups.addItem('Remarks', '/co/lookups/remarks', 'fa-angle-right');
        }

        this.createInventoryMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var jobs = this.addItem('Jobs Queue', '/in/job-management', 'fa fa-tasks fa-fw');
            var dispatch = this.addItem('Dispatch', '/in/dispatch', 'fa fa-check-circle-o fa-fw');

            var mis = this.addItem('MIS Report', '/in/MIS-Report', 'fa fa-tasks fa-fw');
            var lookups = this.addItem('Lookups', '/in/lookups', 'fa fa-sort-alpha-asc fa-fw');

            var flags = this.addItem('Flagged Jobs', '/in/flagged-jobs', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/in/flagged-jobs', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Jobs
            jobs.addItem('Incoming Jobs', '/in/incoming-jobs', 'fa-angle-right');
            jobs.addItem('Partial Jobs Queue', '/in/partial-jobs', 'fa-angle-right');
            jobs.addItem('Card Waste Queue', '/in/waste-jobs', 'fa-angle-right');
            jobs.addItem('Card Held Queue', '/in/incoming-heldcards', 'fa-angle-right');
            jobs.addItem('Print Waste Queue', '/in/print-waste-jobs', 'fa-angle-right');
            jobs.addItem('Print Held Queue', '/in/incoming-heldprints', 'fa-angle-right');

            var achives = this.addItem('Jobs Archive', '/in/job-management', 'fa fa-tasks fa-fw');
            achives.addItem('Job Audit Trail', '/in/incoming-jobs', 'fa-angle-right');
            achives.addItem('Card Issuance Logs', '/in/partial-jobs', 'fa-angle-right');
            achives.addItem('Stationary Issuance Logs', '/in/partial-jobs', 'fa-angle-right');

            // Dispatch
            dispatch.addItem('Incoming Jobs', '/in/dispatch/incoming-jobs', 'fa-angle-right');
            dispatch.addItem('Delivery Reports', '/in/dispatch/delivery-reports', 'fa-angle-right');

            // MIS Report
            var miscard = mis.addItem('Embedded Cards', '/in/MIS/cards');
            var misstationary = mis.addItem('Stationaries', '/in/MIS/stationary');

            miscard.addItem('MIS Reports', '/in/mis/card/mis-reports', 'fa-angle-right');
            miscard.addItem('Issuance Reports', '/in/mis/card/issuance-reports', 'fa-angle-right');
            miscard.addItem('Waste Reports', '/in/mis/card/waste-reports', 'fa-angle-right');
            miscard.addItem('Dispatch Reports', '/in/mis/card/dispatch-reports', 'fa-angle-right');
            miscard.addItem('DeliveryNote Reports', '/in/mis/card/deliverynote-reports', 'fa-angle-right');
            miscard.addItem('Vault Reports', '/in/mis/card/vault-reports', 'fa-angle-right');
            miscard.addItem('Card Receipt Reports', '/in/mis/card/receiptlog-reports', 'fa-angle-right');

            // Subitems of Lookups
            lookups.addItem('Card Variants', '/in/lookups/card-variants', 'fa-angle-right');
            lookups.addItem('Clients', '/in/lookups/clients', 'fa-angle-right');
            lookups.addItem('Card Types', '/in/lookups/card-types', 'fa-angle-right');

        }

        this.createCardEngrMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var jobs = this.addItem('Jobs Management', '/ce/job-management', 'fa fa-tasks fa-fw');
            var flags = this.addItem('Flagged Jobs', '/ce/flags', 'fa fa-flag fa-fw');
            var achives = this.addItem('Jobs Archive', '/ce/job-archives', 'fa fa-tasks fa-fw');

            // MIS Report
            var incoming = jobs.addItem('Incoming Jobs', '/ce/incoming-jobs');
            var resumable = jobs.addItem('Resumable Jobs', '/ce/resumable-jobs');

            var flags = this.addItem('Flagged Jobs', '/pr/flags', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/student/assessments/subjects', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');


            incoming.addItem('Card Jobs', '/ce/incoming-perso', 'fa-angle-right');
            //incoming.addItem('Print Jobs', '/ce/incoming-prints', 'fa-angle-right');

            resumable.addItem('New Card Jobs', '/ce/resumable/new-perso', 'fa-angle-right');
            resumable.addItem('Partial Card Jobs', '/ce/resumable/partial-perso', 'fa-angle-right');

            // Archives
            achives.addItem('Jobs Archives', '/ce/job-archives', 'fa-angle-right');
            achives.addItem('Card Issuance Reports', '/ce/job-issuancereports', 'fa-angle-right');
            achives.addItem('Job Perso Reports', '/ce/job-persoreports', 'fa-angle-right');
            achives.addItem('Job Delivery Reports', '/ce/job-deliveryreports', 'fa-angle-right');

            //// Subitems of Flags
            flags.addItem('Pending Issues', '/student/assessments/subjects', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/student/assessments/assignments', 'fa-angle-right');

        }

        this.createPrintingMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var jobs = this.addItem('Jobs Management', '/pr/job-management', 'fa fa-tasks fa-fw');

            var flags = this.addItem('Flagged Jobs', '/pr/flags', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/pr/flagged-jobs', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Jobs
            jobs.addItem('Incoming Printing', '/pr/incoming-print', 'fa-angle-right');
            jobs.addItem('Print Analysis', '/pr/print-analysis', 'fa-angle-right');
            //jobs.addItem('Print Deliverable', '/pr/print-deliverables', 'fa-angle-right');

            // Archives
            var achives = this.addItem('Jobs Archive', '/in/job-management', 'fa fa-tasks fa-fw');
            achives.addItem('Job Audit Trail', '/in/incoming-jobs', 'fa-angle-right');

            //// Subitems of Flags
            var flags = this.addItem('Flagged Jobs', '/pr/flags', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/student/assessments/subjects', 'fa-angle-right');
            flags.addItem('Pending Issues', '/student/assessments/subjects', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/student/assessments/assignments', 'fa-angle-right');

        }

        this.createQAMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var qa = this.addItem('Quality Assurance', '/qa/incoming-persos', 'fa fa-tasks fa-fw');
            var waste = this.addItem('Waste Request', '/qa/waste-request', 'fa fa-tasks fa-fw');

            var flags = this.addItem('Flagged Jobs', '/flagged-jobs', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/qa/flagged-jobs', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Jobs
            qa.addItem('Incoming Perso Jobs', '/qa/incoming-persos', 'fa-angle-right');
            qa.addItem('Incoming Print Jobs', '/qa/incoming-prints', 'fa-angle-right');
        
            // Archives
            var achives = this.addItem('Jobs Archive', '/in/job-management', 'fa fa-tasks fa-fw');
            achives.addItem('Job Audit Trail', '/in/incoming-jobs', 'fa-angle-right');

            //// Subitems of Waste
            waste.addItem('Perso Waste Request', '/qa/perso-waste-requests', 'fa-angle-right');
            waste.addItem('Print Waste Request', '/qa/print-waste-requests', 'fa-angle-right');

            waste.addItem('Approved Request', '/qa/approved-wastes', 'fa-angle-right');


        }

        this.createMailingMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var mailing = this.addItem('Mailing', '/ma/incoming-jobs', 'fa fa-tasks fa-fw');
            var delivery = this.addItem('Job Delivery', '/ma/job-delivery', 'fa fa-tasks fa-fw');
           
            var flags = this.addItem('Flagged Jobs', '/flagged-jobs', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/ma/flagged-jobs', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Jobs
            mailing.addItem('Incoming Jobs', '/ma/incoming-jobs', 'fa-angle-right');
            mailing.addItem('Partial Jobs', '/ma/partial-jobs', 'fa-angle-right');
           
            delivery.addItem('Pending Delivery', '/ma/job-delivery', 'fa-angle-right');
            delivery.addItem('Completed Delivery', '/ma/completed-jobs', 'fa-angle-right');

            // Archives
            var achives = this.addItem('Jobs Archive', '/in/job-management', 'fa fa-tasks fa-fw');
            achives.addItem('Job Audit Trail', '/in/incoming-jobs', 'fa-angle-right');

        }

        this.createDPMenu = function () {
            var dashboard = this.addItem('Dashboard', '/student/dashboard', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/student/assessments', 'fa fa-check-circle-o fa-fw');
            var qc = this.addItem('Quality Control', '/student/assessments', 'fa fa-tasks fa-fw');
           
            var flags = this.addItem('Flagged Jobs', '/pr/flags', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/student/assessments/subjects', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Jobs
            qc.addItem('Approved Job List', '/student/accounts/students', 'fa-angle-right');
            qc.addItem('Pending', '/student/accounts/students', 'fa-angle-right');
            qc.addItem('Verified', '/student/accounts/students', 'fa-angle-right');

        }

        this.createMAudMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var maudits = this.addItem('Job Process', '/au/incoming-jobs', 'fa fa-tasks fa-fw');
            
            var flags = this.addItem('Flagged Jobs', '/pr/flags', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/student/assessments/subjects', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Jobs
            maudits.addItem('Incoming Jobs', '/au/incoming-jobs', 'fa-angle-right');
            maudits.addItem('Pending', '/student/accounts/students', 'fa-angle-right');
            maudits.addItem('Verified', '/student/accounts/students', 'fa-angle-right');

        }

        this.createCSMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var maudits = this.addItem('Job Process', '/cs/incoming-jobs', 'fa fa-tasks fa-fw');
            
            var flags = this.addItem('Flagged Jobs', '/flagged-jobs', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/cs/flagged-jobs', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Jobs
            maudits.addItem('Incoming Jobs', '/cs/incoming-jobs', 'fa-angle-right');
            maudits.addItem('Pending', '/student/accounts/students', 'fa-angle-right');
            maudits.addItem('Verified', '/student/accounts/students', 'fa-angle-right');

        }

        this.createRMMenu = function () {
            var dashboard = this.addItem('Dashboard', '/student/dashboard', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/student/assessments', 'fa fa-check-circle-o fa-fw');
            var jobs = this.addItem('Job Management', '/rm/job-managements', 'fa fa-tasks fa-fw');
            
            var flags = this.addItem('Flagged Jobs', '/pr/flags', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/student/assessments/subjects', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Jobs
            jobs.addItem('Non Perso Jobs', '/rm/nonperso-jobs', 'fa-angle-right');
        }

        this.createQCMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var qc = this.addItem('Quality Control', '/', 'fa fa-tasks fa-fw');
            var delivery = this.addItem('Job Delivery', '/', 'fa fa-tasks fa-fw');
            
            var flags = this.addItem('Flagged Jobs', '/flagged-jobs', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/qc/flagged-jobs', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            qc.addItem('Incoming Persos', '/qc/incoming-persos', 'fa-angle-right');
            qc.addItem('Incoming Printings', '/qc/incoming-printings', 'fa-angle-right');
         
            var carddelivery = delivery.addItem('Card Delivery', '/qc/card-pending-delivery', 'fa-angle-right');
            var printdelivery = delivery.addItem('Print Delivery', '/qc/completed-delivery', 'fa-angle-right');

            carddelivery.addItem('Pending Delivery', '/qc/card-pending-delivery', 'fa-angle-right');
            carddelivery.addItem('Completed Delivery', '/qc/card-completed-delivery', 'fa-angle-right');

            printdelivery.addItem('Pending Delivery', '/qc/print-pending-delivery', 'fa-angle-right');
            printdelivery.addItem('Completed Delivery', '/qc/print-completed-delivery', 'fa-angle-right');


        }

        this.createSupervisorMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var ce = this.addItem('CE Management', '/pr/job-management', 'fa fa-tasks fa-fw');
            var qa = this.addItem('QA Management', '/pr/job-management', 'fa fa-tasks fa-fw');
            var qc = this.addItem('QC Management', '/pr/job-management', 'fa fa-tasks fa-fw');
            var ma = this.addItem('MA Management', '/pr/job-management', 'fa fa-tasks fa-fw');
            var flags = this.addItem('Flagged Jobs', '/pr/flags', 'fa fa-flag fa-fw');

            // CE
            var incoming = ce.addItem('Incoming Jobs', '/ce/incoming-jobs');
            var resumable = ce.addItem('Resumable Jobs', '/ce/resumable-jobs');
            incoming.addItem('Card Jobs', '/ce/incoming-perso', 'fa-angle-right');
            resumable.addItem('New Card Jobs', '/ce/resumable/new-perso', 'fa-angle-right');
            resumable.addItem('Partial Card Jobs', '/ce/resumable/partial-perso', 'fa-angle-right');

            //// QA
            var jobs = qa.addItem('Job Management', '/student/accounts/students', 'fa-angle-right');
            var waste = qa.addItem('Waste Management', '/pr/incoming-print', 'fa-angle-right');
            jobs.addItem('Incoming Perso Jobs', '/qa/incoming-persos', 'fa-angle-right');
            jobs.addItem('Incoming Print Jobs', '/qa/incoming-prints', 'fa-angle-right');
            waste.addItem('Request Card', '/qa/waste-requests', 'fa-angle-right');
            waste.addItem('Pending Request', '/qa/pending-wastes', 'fa-angle-right');
            waste.addItem('Approved Request', '/qa/approved-wastes', 'fa-angle-right');

            //// QC //Todo: Split resources
            qc.addItem('Incoming Persos', '/qc/incoming-persos', 'fa-angle-right');
            qc.addItem('Incoming Printings', '/qc/incoming-printings', 'fa-angle-right');
            qc.addItem('Card Pending Delivery', '/qc/card-pending-delivery', 'fa-angle-right');
            qc.addItem('Card Completed Delivery', '/qc/card-completed-delivery', 'fa-angle-right');
            qc.addItem('Print Pending Delivery', '/qc/print-pending-delivery', 'fa-angle-right');
            qc.addItem('Print Completed Delivery', '/qc/print-completed-delivery', 'fa-angle-right');


            //// MA
            ma.addItem('Job Lists', '/student/accounts/students', 'fa-angle-right');
            ma.addItem('Incoming Printing', '/pr/incoming-print', 'fa-angle-right');


            // Archives
            var achives = this.addItem('Jobs Archive', '/in/job-management', 'fa fa-tasks fa-fw');
            achives.addItem('Job Audit Trail', '/in/incoming-jobs', 'fa-angle-right');

            //// Subitems of Flags
            flags.addItem('Pending Issues', '/sup/flaggedjobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/sup/resolvedissues', 'fa-angle-right');

        }

        this.createFinanceMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var jobs = this.addItem('Jobs Management', '/pr/job-management', 'fa fa-tasks fa-fw');
           
            var flags = this.addItem('Flagged Jobs', '/pr/flags', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/student/assessments/subjects', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Jobs
            jobs.addItem('Job Lists', '/student/accounts/students', 'fa-angle-right');
            jobs.addItem('Incoming Printing', '/pr/incoming-print', 'fa-angle-right');

            // Archives
            var achives = this.addItem('Jobs Archive', '/in/job-management', 'fa fa-tasks fa-fw');
            achives.addItem('Job Audit Trail', '/in/incoming-jobs', 'fa-angle-right');


        }

        this.createManagementMenu = function () {
            var dashboard = this.addItem('Dashboard', '/', 'fa fa-dashboard');
            var jobstatus = this.addItem('Jobs Status', '/job-status', 'fa fa-check-circle-o fa-fw');
            var jobs = this.addItem('Jobs Management', '/pr/job-management', 'fa fa-tasks fa-fw');
            
            var flags = this.addItem('Flagged Jobs', '/pr/flags', 'fa fa-flag fa-fw');
            flags.addItem('Unit Issues', '/student/assessments/subjects', 'fa-angle-right');
            flags.addItem('Pending Issues', '/flagged-jobs', 'fa-angle-right');
            flags.addItem('Resolved Issues', '/flagged-resolved', 'fa-angle-right');

            //// Subitems of Jobs
            jobs.addItem('Job Lists', '/student/accounts/students', 'fa-angle-right');
            jobs.addItem('Incoming Printing', '/pr/incoming-print', 'fa-angle-right');

            // Archives
            var achives = this.addItem('Jobs Archive', '/in/job-management', 'fa fa-tasks fa-fw');
            achives.addItem('Job Audit Trail', '/in/incoming-jobs', 'fa-angle-right');

        }


        this.prepareSidebarMenu = function () {

            var auth = authService.authentication;
            if (auth.roles !== "") {
                var roles = JSON.parse(auth.roles);
                var pageView = roles[0];
            }

            if (pageView === 'Admin') {
                this.createSuperAdminMenu();
            } else if (pageView === 'CardOps') {
                this.createCardOpsMenu();
            } else if (pageView === 'Inventory') {
                this.createInventoryMenu();
            } else if (pageView === 'CardEngr') {
                this.createCardEngrMenu();
            } else if (pageView === 'Printing') {
                this.createPrintingMenu();
            } else if (pageView === 'QA') {
                this.createQAMenu();
            } else if (pageView === 'QC') {
                this.createQCMenu();
            } else if (pageView === 'Mailing') {
                this.createMailingMenu();
            } else if (pageView === 'Supervisor') {
                this.createSupervisorMenu();
            } else if (pageView === 'RM') {
                this.createRMMenu();
            } else if (pageView === 'Finance') {
                this.createFinanceMenu();
            } else if (pageView === 'Management') {
                this.createManagementMenu();
            } else if (pageView === 'MaterialAudit') {
                this.createMAudMenu();
            }else if (pageView === 'CS') {
                this.createCSMenu();
            }

            return this;
        };

        this.prepareHorizontalMenu = function () {
            var dashboard = this.addItem('Dashboard', '/app/dashboard', 'linecons-cog');
            var layouts = this.addItem('Layout', '/app/layout-and-skins', 'linecons-desktop');
            var ui_elements = this.addItem('UI Elements', '/app/ui', 'linecons-note');
            var forms = this.addItem('Forms', '/app/forms', 'linecons-params');
            var other = this.addItem('Other', '/app/extra', 'linecons-beaker');

            // Subitems of Dashboard
            dashboard.addItem('Dashboard 1', '-/variant-1'); // "-/" will append parents link
            dashboard.addItem('Dashboard 2', '-/variant-2');
            dashboard.addItem('Dashboard 3', '-/variant-3');
            dashboard.addItem('Dashboard 4', '-/variant-4');

            // Subitems of UI Elements
            ui_elements.addItem('Panels', '-/panels');
            ui_elements.addItem('Buttons', '-/buttons');
            ui_elements.addItem('Tabs & Accordions', '-/tabs-accordions');
            ui_elements.addItem('Modals', '-/modals');
            ui_elements.addItem('Breadcrumbs', '-/breadcrumbs');
            ui_elements.addItem('Blockquotes', '-/blockquotes');
            ui_elements.addItem('Progress Bars', '-/progress-bars');
            ui_elements.addItem('Navbars', '-/navbars');
            ui_elements.addItem('Alerts', '-/alerts');
            ui_elements.addItem('Pagination', '-/pagination');
            ui_elements.addItem('Typography', '-/typography');
            ui_elements.addItem('Other Elements', '-/other-elements');


            // Subitems of Forms
            forms.addItem('Native Elements', '-/native');
            forms.addItem('Advanced Plugins', '-/advanced');
            forms.addItem('Form Wizard', '-/wizard');
            forms.addItem('Form Validation', '-/validation');
            forms.addItem('Input Masks', '-/input-masks');
            forms.addItem('File Upload', '-/file-upload');
            forms.addItem('Editors', '-/wysiwyg');
            forms.addItem('Sliders', '-/sliders');


            // Subitems of Others
            var widgets = other.addItem('Widgets', '/app/widgets', 'linecons-star');
            var mailbox = other.addItem('Mailbox', '/app/mailbox', 'linecons-mail').setLabel('5', 'secondary', false);
            var tables = other.addItem('Tables', '/app/tables', 'linecons-database');
            var extra = other.addItem('Extra', '/app/extra', 'linecons-beaker').setLabel('New Items', 'purple');
            var charts = other.addItem('Charts', '/app/charts', 'linecons-globe');
            var menu_lvls = other.addItem('Menu Levels', '', 'linecons-cloud');


            // Subitems of Mailbox
            mailbox.addItem('Inbox', '-/inbox');
            mailbox.addItem('Compose Message', '-/compose');
            mailbox.addItem('View Message', '-/message');


            // Subitems of Tables
            tables.addItem('Basic Tables', '-/basic');
            tables.addItem('Responsive Tables', '-/responsive');
            tables.addItem('Data Tables', '-/datatables');


            // Subitems of Extra
            var extra_icons = extra.addItem('Icons', '-/icons').setLabel(4, 'warning');
            var extra_maps = extra.addItem('Maps', '-/maps');
            extra.addItem('Gallery', '-/gallery');
            extra.addItem('Calendar', '-/calendar');
            extra.addItem('Profile', '-/profile');
            extra.addItem('Login', '/login');
            extra.addItem('Lockscreen', '/lockscreen');
            extra.addItem('Login Light', '/login-light');
            extra.addItem('Timeline', '-/timeline');
            extra.addItem('Timeline Centered', '-/timeline-centered');
            extra.addItem('Notes', '-/notes');
            extra.addItem('Image Crop', '-/image-crop');
            extra.addItem('Portlets', '-/portlets');
            extra.addItem('Blank Page', '-/blank-page');
            extra.addItem('Search', '-/search');
            extra.addItem('Invoice', '-/invoice');
            extra.addItem('404 Page', '-/page-404');
            extra.addItem('Tocify', '-/tocify');
            extra.addItem('Loading Progress', '-/loading-progress');
            //extra.addItem('Page Loading Overlay', 		'-/page-loading-overlay'); NOT SUPPORTED IN ANGULAR
            extra.addItem('Notifications', '-/notifications');
            extra.addItem('Nestable Lists', '-/nestable-lists');
            extra.addItem('Scrollable', '-/scrollable');

            // Submenu of Extra/Icons
            extra_icons.addItem('Font Awesome', '-/font-awesome');
            extra_icons.addItem('Linecons', '-/linecons');
            extra_icons.addItem('Elusive', '-/elusive');
            extra_icons.addItem('Meteocons', '-/meteocons');

            // Submenu of Extra/Maps
            extra_maps.addItem('Google Maps', '-/google');
            extra_maps.addItem('Advanced Map', '-/advanced');
            extra_maps.addItem('Vector Map', '-/vector');


            // Subitems of Charts
            charts.addItem('Chart Variants', '-/variants');
            charts.addItem('Range Selector', '-/range-selector');
            charts.addItem('Sparklines', '-/sparklines');
            charts.addItem('Map Charts', '-/map-charts');
            charts.addItem('Circular Gauges', '-/gauges');
            charts.addItem('Bar Gauges', '-/bar-gauges');



            // Subitems of Menu Levels
            var menu_lvl1 = menu_lvls.addItem('Menu Item 1.1');  // has to be referenced to add sub menu elements
            menu_lvls.addItem('Menu Item 1.2');
            menu_lvls.addItem('Menu Item 1.3');

            // Sub Level 2
            menu_lvl1.addItem('Menu Item 2.1');
            var menu_lvl2 = menu_lvl1.addItem('Menu Item 2.2'); // has to be referenced to add sub menu elements
            menu_lvl1.addItem('Menu Item 2.3');

            // Sub Level 3
            menu_lvl2.addItem('Menu Item 3.1');
            menu_lvl2.addItem('Menu Item 3.2');

            return this;
        }

        this.instantiate = function () {
            return angular.copy(this);
        }

        this.toStatePath = function (path) {
            return path.replace(/\//g, '.').replace(/^\./, '');
        };

        this.setActive = function (path) {
            this.iterateCheck(this.menuItems, this.toStatePath(path));
        };

        this.setActiveParent = function (item) {
            item.isActive = true;
            item.isOpen = true;

            if (item.parent)
                this.setActiveParent(item.parent);
        };

        this.iterateCheck = function (menuItems, currentState) {
            angular.forEach(menuItems, function (item) {
                if (item.state == currentState) {
                    item.isActive = true;

                    if (item.parent != null)
                        $menuItemsRef.setActiveParent(item.parent);
                }
                else {
                    item.isActive = false;
                    item.isOpen = false;

                    if (item.menuItems.length) {
                        $menuItemsRef.iterateCheck(item.menuItems, currentState);
                    }
                }
            });
        }

    });

})();