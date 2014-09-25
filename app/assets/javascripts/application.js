//= require jquery
//= require jquery_nested_form
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  $('.encounter').hide();
  $('h4.encounter-header').on('click', function() {
    $(this).next().toggle();
  });
  
  var maxHeight = 0;
  $('.dashboard').each(function(){
     if ($(this).height() > maxHeight) { maxHeight = $(this).height(); }
  });
  $('.dashboard').height(maxHeight);
})
