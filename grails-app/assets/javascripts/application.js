// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require angular/angular
//= require angular-resource/angular-resource
//= require_self

var myApp = angular.module("myHRM", ["ngResource", "ngDialog"]);
//= require_tree application
//= require bootstrap/dist/js/bootstrap
//= require ng-dialog/js/ngDialog
console.log("load completed");

//if (typeof jQuery !== 'undefined') {
//	(function($) {
//		$('#spinner').ajaxStart(function() {
//			$(this).fadeIn();
//		}).ajaxStop(function() {
//			$(this).fadeOut();
//		});
//	})(jQuery);
//}