// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
// require jquery
// require jquery_ujs
// require ckeditor/init
//= require summernote
//= require_tree .


(function() {
  $(function() {
    $('.summernote').summernote({
      height: 280,
    });
    return $('.summernote-plugin').summernote({
      height: 280,
      toolbar: [['style', ['bold', 'italic', 'underline', 'clear']], ['font', ['strikethrough']], ['fontsize', ['fontsize']], ['color', ['color']], ['para', ['ul', 'ol', 'paragraph']], ['height', ['height']], ['table', ['table']], ['chart', ['chart']], ['insert', ['hello']]]
    });
  });

}).call(this);

$(document).ready(function() {
  $('.has-tooltip').tooltip();
});
