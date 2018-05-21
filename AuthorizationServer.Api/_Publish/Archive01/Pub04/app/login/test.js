﻿(function () {
    'use strict';
    var controllerId = 'test';

    angular
        .module('app')
        .controller('test', test);

    test.$inject = ['$layout', '$location', '$scope', '$rootScope', '$window', 'accountService', 'authService', 'common', 'localStorageService'];

    function test($layout, $location, $scope, $rootScope, $window, accountService, authService, common, localStorageService) {
        /* jshint validthis:true */
        var getLogFn = common.logger.getLogFn;
        var log = getLogFn(controllerId);
        var $q = common.$q;
        var primePromise;

        var vm = this;

        vm.isSaving = false;
        vm.message = "";
        vm.messageVisble = false;
        vm.login = login;

        $scope.showParticles = true;

        $scope.loginData = {
            userName: "",
            password: ""
        };

        $scope.message = "";

        Object.defineProperty(vm, 'canSave', { get: canSave });

        function canSave() { return !vm.isSaving; }


        function activate() {
            common.activateController([], controllerId)
                .then(function () {
                    //log('Activated Login View');
                });
        }

        function login() {
            $scope.message = "";
            vm.isSaving = true;
            vm.message = "Please wait...";
            vm.messageVisble = true;

            authService.login($scope.loginData).then(function (response) {
                $location.path('/');
                $window.location.reload();
            },
			 function (err) {
			     vm.isSaving = false;
			     vm.message = "";
			     vm.messageVisble = false;
			     $scope.message = err.error_description;
			 });
        }


        $scope.login = function () {

            $rootScope.isLoginPage = false;
            $rootScope.isLightLoginPage = false;
            $rootScope.isLockscreenPage = false;
            $rootScope.isMainPage = true;
            $rootScope.isContent = true;
            $rootScope.layoutOptions = {
                horizontalMenu: {
                    isVisible: false,
                    isFixed: true,
                    minimal: false,
                    clickToExpand: false,

                    isMenuOpenMobile: false
                },
                sidebar: {
                    isVisible: true,
                    isCollapsed: false,
                    toggleOthers: true,
                    isFixed: true,
                    isRight: false,

                    isMenuOpenMobile: false,

                    // Added in v1.3
                    userProfile: true
                },
                chat: {
                    isOpen: false,
                },
                settingsPane: {
                    isOpen: false,
                    useAnimation: true
                },
                container: {
                    isBoxed: false
                },
                skins: {
                    sidebarMenu: '',
                    horizontalMenu: '',
                    userInfoNavbar: ''
                },
                pageTitles: true,
                userInfoNavVisible: false
            };

            $layout.loadOptionsFromCookies(); // remove this line if you don't want to support cookies that remember layout changes
            //$location.path('/');

            authService.login($scope.loginData).then(function (response) {
                console.log(response);

                // Get the users roles and claims information

                // Create the users AccountType Claims Service
                accountTypeSetup();
                defaultAccountType();

                $location.path('/');
            },
			 function (err) {
			     $scope.message = err.error_description;
			     console.log($scope.message);
			 });

        }
        $rootScope.isLoginPage = true;
        $rootScope.isLightLoginPage = true;
        $rootScope.isLockscreenPage = false;
        $rootScope.isMainPage = false;


        $rootScope.layoutOptions = {
            horizontalMenu: {
                isVisible: false,
                isFixed: true,
                minimal: false,
                clickToExpand: false,

                isMenuOpenMobile: false
            },
            sidebar: {
                isVisible: false,
                isCollapsed: false,
                toggleOthers: false,
                isFixed: true,
                isRight: false,

                isMenuOpenMobile: false,

                // Added in v1.3
                userProfile: false
            },
            chat: {
                isOpen: false,
            },
            settingsPane: {
                isOpen: false,
                useAnimation: false
            },
            container: {
                isBoxed: false
            },
            skins: {
                sidebarMenu: '',
                horizontalMenu: '',
                userInfoNavbar: ''
            },
            pageTitles: false,
            userInfoNavVisible: false
        };


    }
})();
