$(document).ready(function(){
   $('#work').theWork();
});


(function ($) {
  
  var _work = function () {
    $(this).css({overflow: "hidden"});
    
    $(this).before("<div class='project_toggle'><a href='' class='prev'>PREV</a><a href='' class='next'>NEXT</a></div>");
    _projectList($(this).find('ol')[0]);
  }
  
  var _projectList = function (list_el) {
    var list = $(list_el);
    var currentProject = 0;
    // spacing needed to get the
    // list to float...
    // I'll fix it with maths later.
    var spacer = 1000;
    // calc total width of li's + spacer
    // and make the ol that wide so they float
    // ready for animation
    
    list.width(listWidth(list) + spacer + 'px');
        
    list.bind("project.go", function(e, target) {
      if (anchor = (String(target)).match(/#(\w+)/)) {          
        var next_el = document.getElementById(list.children(':first').attr('id'));
        var target_el = document.getElementById(anchor[1]);          
        var id = 0;
        while (!!next_el && (next_el.id != anchor[1])) {
          id += 1;
          next_el = next_el.nextSibling;
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
        if (target > currentProject) {  
          list.animate({ left: "-=" + (liDistance(list, currentProject, target-1) + "px") }, 'slow', 'easeInOutQuad', $.noop);      
        } else if (target < currentProject) {
          list.animate({ left: "+=" + (liDistance(list, target, currentProject-1) + "px") }, 'slow', 'easeInOutQuad', $.noop);      
        };
      };
      
      currentProject = target;
    });
    
    $('a.prev').click(function () {         
      list.trigger('project.go', currentProject-1); 
      return false; 
    });
    
    $('a.next').click(function () {
      list.trigger('project.go', (currentProject+1)); 
      return false; 
    });
    
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
  
  // function liHeight(list, n) {
  //     return height(list.children('li:nth-child('+n+')'));
  // }
     
  // expose those bad boys to jQuery NS.
  $.fn.extend({
    theWork : _work
  });
  
})(jQuery);
