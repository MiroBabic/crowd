// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require jquery-fileupload
//= require modernizr
//= require bootstrap-sprockets
//= require app.js
//= require login-signup-modal/main.js
//= require dataTables/datatables.min.js
//= require modernizr
//= require jquery.cslider
//= require readmore
//= require bootstrap-wysihtml5
//= require bootstrap-wysihtml5/locales
//= require jquery-validation/jquery.validate.min.js
//= require jquery-validation/additional-methods.min.js
//= require jquery-validation/localization/messages_sk.min.js
//= require circles/circles.js
//= require turbolinks
//= require_tree .


 jQuery(document).ready(function() {
      	App.init();
      	ParallaxSlider.initParallaxSlider();
       });

