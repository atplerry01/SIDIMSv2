﻿'use strict';
// include plug-ins
var gulp = require('gulp');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');
var autoprefix = require('gulp-autoprefixer');
var minifyCSS = require('gulp-minify-css');
var rename = require('gulp-rename');
var del = require('del');

// include plug-ins
var changed = require('gulp-changed');
var minifyHTML = require('gulp-minify-html');


var config = {
    //Include all js files but exclude any min.js files
    src: ['app/**/*.js',
        '!app/services/**/*.js',
        '!app/common/**/*.js',
        '!app/*.js',
        '!app/**/*.min.js'
    ]
}

var vendorConfig = {
    src: [
        'assets/Scripts/angular-sanitize.js',
        'assets/Scripts/bootstrap.js',
        'assets/Scripts/moment.js',
        'assets/Scripts/angular-route.js',
        'assets/Scripts/toastr.js',
        'assets/Scripts/angular-animate.js',
        'assets/Scripts/ngplus-overlay.js',
        'assets/Scripts/angular-fullscreen.js',
        'assets/Scripts/ngPrint.js',
        'assets/js/oc-lazyload/ocLazyLoad.min.js',
        'assets/Scripts/angular-cookies.min.js',
        'assets/Scripts/angular-local-storage.min.js',

        'assets/scripts/breeze.debug.js',
        'assets/scripts/breeze.angular.js',
        'assets/scripts/breeze.directives.js',
        'assets/scripts/breeze.saveErrorExtensions.js',
        'assets/Scripts/breeze.metadata-helper.js',
        'assets/Scripts/angular.breeze.storagewip.js',
        'assets/Scripts/ngplus-overlay.js',
        'assets/scripts/ui-bootstrap-tpls-0.10.0.js',

        'assets/js/TweenMax.min.js',
        'assets/js/joinable.js',
        'assets/js/resizeable.js',
        'app/xenon-custom.js',

        

    ]
}

//delete the output file(s)
gulp.task('clean', function () {
    return del(['app/all.min.js']);
});

gulp.task('vendor-scripts', ['clean'], function () {
    return gulp.src(vendorConfig.src)
      .pipe(uglify())
      .pipe(concat('vendor.min.js'))
      .pipe(gulp.dest('app/'));
});

gulp.task('scripts', ['clean'], function () {
    return gulp.src(config.src)
      .pipe(uglify())
      .pipe(concat('all.min.js'))
      .pipe(gulp.dest('app/'));
});


// minify new or changed HTML pages
gulp.task('minify-html', function () {
    var opts = { empty: true, quotes: true };
    var htmlPath = { htmlSrc: './app/**/*.html', htmlDest: './appbuild/views' };

    return gulp.src(htmlPath.htmlSrc)
      .pipe(changed(htmlPath.htmlDest))
      .pipe(minifyHTML(opts))
      .pipe(gulp.dest(htmlPath.htmlDest));
});

// CSS concat, auto prefix, minify, then rename output file
gulp.task('minify-css', function () {
    var cssPath = { cssSrc: ['./assets/css/*.css', '!*.min.css', '!/**/*.min.css'], cssDest: './contentbuild/css/' };

    return gulp.src(cssPath.cssSrc)
      .pipe(concat('styles.css'))
      .pipe(autoprefix('last 2 versions'))
      .pipe(minifyCSS())
      .pipe(rename({ suffix: '.min' }))
      .pipe(gulp.dest(cssPath.cssDest));
});

//Set a default tasks
//gulp.task('default', ['scripts'], function () { });

// default gulp task
gulp.task('default', ['minify-html', 'vendor-scripts', 'scripts', 'minify-css'], function () {
    // watch for HTML changes
    gulp.watch('./app/**/*.html', ['minify-html']);
    // watch for JS changes
    gulp.watch('./app/**/*.js', ['scripts']);
    // watch for CSS changes
    gulp.watch('./content/css/*.css', ['minify-css']);
});