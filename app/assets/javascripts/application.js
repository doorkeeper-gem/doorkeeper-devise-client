//= require rails-ujs
//= require activestorage
//= require_tree .

$(function () {
  $('.data-explore').click(function () {
    var link = $(this);
    $('#display-json').load(link.attr('href'), function (text) {
      $(this).text(JSON.stringify(JSON.parse(text), null, 2))
    });
    return false;
  });
});
