$(document).ready(function(){
   $('#work .container').theWork();
   // $('#people').theTeam();
});


(function ($) {
  
  var _work = function () {
    $(this).css({overflow: "hidden"});    
    var links = _scrollList($(this).find('ol')[0], "project");
    $(this).find('ol').before("<div class='project_toggle group'><a href='' class='prev'>PREV</a><a href='' class='next'>NEXT</a></div>");
    $(this).find('a.prev').click(function () {         
      links.trigger("project.previous"); 
      return false; 
    });
    $(this).find('a.next').click(function () {
      links.trigger("project.next"); 
      return false;
    });
  }
  
  var _team = function () {
    $(this).css({overflow: "hidden"});
    var team = _scrollList($(this).find('ol')[0], "team");
    var links = $('#team-links li a');
    links.click(function () {      
      team.trigger("team.go", $(this).attr("href")); 
      links.removeClass('chosen');
      $(this).addClass('chosen');
      return false; 
    });
  }
  
  var _scrollList = function (list_el, callback_namespace) {
    var list = $(list_el);
    var currentItem = 0;
    
    function name_callback(action) {
      return callback_namespace + "." + action;
    }
    
    list.addClass('scrollist');
    list.width(listWidth(list) + 'px');
    list.bind(name_callback("go"), function(e, target) {
      if (anchor = (String(target)).match(/#(\w+[_-]\w+)/)) {
        var next_el = document.getElementById(list.children(':first').attr('id'));        
        var target_el = document.getElementById(anchor[1]);
        var id = 0;
        while (!!next_el && (next_el.id != anchor[1])) {
          next_el = next_el.nextSibling;
          if (next_el && next_el.id) {
            id += 1;
          };
        }  
        target = id;
      };
      
      var children = list.children('li').size();
      if (target >= children) {          
        target = children-1;
      };
      
      console.log("list is ");
      console.log(list);
      
      if (target < 0) {
        target = 0;
        list.animate({ left: target }, 'slow', 'easeInOutQuad', $.noop);
      } else {
        if (target > currentItem) {  
          list.animate({ left: "-=" + (liDistance(list, currentItem, target-1) + "px") }, 'slow', 'easeInOutQuad', $.noop);      
        } else if (target < currentItem) {
          list.animate({ left: "+=" + (liDistance(list, target, currentItem-1) + "px") }, 'slow', 'easeInOutQuad', $.noop);      
        };
      };
      
      currentItem = target;
    });
    
    list.bind(name_callback("previous"), function(e, target) {       
      list.trigger(name_callback("go"), currentItem-1);
    });
    
    list.bind(name_callback("next"), function(e, target) { 
      list.trigger(name_callback("go"), currentItem+1);
    });
    
    return list;
  };
    
  function css(el, prop) {
    return parseInt($.css(el[0], prop), 10) || 0;
  }
  
  function listWidth(list) {
    return $(list).children('li').map(
      function () { 
        return $(this).outerWidth(); 
      }
    ).sum();
  }
  
  function liWidthAt(list, n) {
    return list.children('li:nth-child('+n+')').outerWidth(true);
  }
  
  function liDistance(list, from, to) {
    var h = 0;    
    for (var i = to; i >= from; i--){      
      h += liWidthAt(list, (i+1));
    };
    return h;
  }
       
  // expose those bad boys to jQuery NS.
  $.fn.extend({
    theWork : _work,
    theTeam : _team
  });
  
})(jQuery);
