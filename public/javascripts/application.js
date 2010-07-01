$(document).ready(function(){
   $('#work').theWork();
   $('#people').theTeam();
});


(function ($) {
  
  var _work = function () {
    $(this).css({overflow: "hidden"});
    
    $(this).before("<div class='project_toggle'><a href='' class='prev'>PREV</a><a href='' class='next'>NEXT</a></div>");
    _scrollList($(this).find('ol')[0], "project");
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
    var callback = callback_namespace + ".go";
    
    list.addClass('scrollist');
    list.width(listWidth(list) + 'px');
    list.bind(callback, function(e, target) {
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
    
    $('a.prev').click(function () {         
      list.trigger(callback, currentItem-1); 
      return false; 
    });
    
    $('a.next').click(function () {
      list.trigger(callback, (currentItem+1)); 
      return false; 
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
