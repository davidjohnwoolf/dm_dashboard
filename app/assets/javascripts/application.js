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

  $('.dashboard').hide();
  $('.players-dash').show();

// site index js

  function dashControl() {
    $('.dashboard').hide();
    $('.' + $(this).attr('class') + '-dash').show();
  };

  function tabClick() {
    $('.dash-menu ul li').css('backgroundColor', '#999');
    $(this).css('backgroundColor', '#fff');
  }

  $('.dash-menu ul li').on('click', tabClick);
  $('.dash-menu ul li').on('click', dashControl);
});
