//= require rails-ujs
//= require activestorage
//= require_tree .

$(function () {
  $('.data-explore').click(function () {
    var link = $(this);
    link.button('loading');
    $('#display-json').load(link.attr('href'), function () {
      link.button('reset');
    });
    return false;
  });
});
