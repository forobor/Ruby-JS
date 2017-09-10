// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//=	require icheck
//= require_tree .
//= require vendor/javascripts/select2

$(document).ready(function() {

			$(function() {
				$('#show-form').click(function() {
					$('.todo-form').slideDown();
					$('.cover').show();
				});
			});

			$(function () {
				$('#cancel').click(function() {
					$('.todo-form').slideUp();
					$('.cover').hide();
				});
			});

			$(function () {
				$('.cover').click(function() {
					$('.todo-form').hide();
					$('.cover').hide();
				});
			});

			$(function () {
				$(".form-update-todo *").click(function(event) {
					if(!event.target.form){
						console.log(event.target.offsetParent.firstChild.form.submit());
					} else {
						event.target.form.submit();
					}
				});
			});


	$('input').iCheck({
		checkboxClass: 'icheckbox_square-blue',
		radioClass: 'iradio_square-blue',
		increaseArea: '20%' // optional
	});

	$( "#todo_project" ).select2({
	    theme: "bootstrap"
	});

});
