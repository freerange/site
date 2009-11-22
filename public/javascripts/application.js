$(document).ready(function(){
  document.title = "Free Range";

  $('#nav a').click(function () {
    $.scrollTo( $(this).attr("href"), 1000, {offset:-40} );
    return false;
  })
});