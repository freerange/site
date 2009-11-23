$(document).ready(function(){
  document.title = "Free Range";

  $('#nav a').click(function () {
    $.scrollTo( $(this).attr("href"), 1000, {offset:-40} );
    window.location.hash = $(this).text() + "_section";
    document.title = $($(this).attr("href")).children("h2").text() + " :: Free Range";
    return false;
  })
});