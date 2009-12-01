$(document).ready(function(){
  $('#nav a, a.top').click(function () {
    $.scrollTo( $(this).attr("href"), 1000, {offset:-50} );
    window.location.hash = $(this).text() + "_section";
    document.title = $($(this).attr("href")).children("h2").text() + " :: " + main_title;
    return false;
  });  
});