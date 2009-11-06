function updateFeature() {

  if ($("#content > div:visible > h1").html() != $("#feature_heading").html()) {  
    $("#content > div:visible").each(function(){
      //alert($(" > h1",this).text());
      //$("#feature > h1").hide("slide",{direction:"left"},300).show("slide",{direction:"right"},300);
      $("#feature > h1").show();
      $(" > h1",this).hide();
      $("#feature_heading").html( $(" > h1",this).html() );
      $("#feature > h1").show();
    });
  }
  
}

function hideAll() {
  $("#content > div").hide();
  $("li.active").removeClass("active");
}

function addLinks() {
  $("#content > div").each(function(){
    $("#nav_links").append("<li class='toggle_content' id='link_"+$(this).attr("id")+"'>"+$(this).attr("id")+"</li>")
    $(this).addClass("slidey");
  });
  
  // add click behavior to nav links
  $(".toggle_content").click(function(){
    // $("#content").hide("slide",{direction:"up"}).show("slide",{direction:"down"});
    hideAll();
    $("#"+$(this).text()).show();
    
    updateFeature();
    
    window.location.hash = $(this).text() + "_section";
    
    highlightLink();
    
    return false;
		
  });
}

function highlightLink(){
  $("#link_"+$("#content > div:visible").attr("id")).addClass("active");
}

$(document).ready(function(){
  
  // Hide all content divs
  hideAll();
  
  // add nav links
  addLinks();
  
  // show first content div
  if (window.location.hash != "") {
    $(window.location.hash.replace("_section","")).show();
  }else {
    $("#content > div:first").show();
  }
  
  // updatelink
  highlightLink();
  
  // update feature
  updateFeature();
});