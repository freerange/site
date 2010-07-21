$(document).ready(function() {
  $('#work .container').theWork();
});

(function($) {
  var _work = function() {
  $(this).css("overflow", "hidden");
    var projects = $(this).find('ol:first');
    projects.scrollList({
      name: "project", 
      animate_callback: function (current_li) {
        $(current_li).siblings().find('ul.project-images').trigger("pimg.stop");
        $(current_li).find('ul.project-images').trigger("pimg.start");
      }
    });
    projects.find('ul.project-images').imageCycler();
    $(this).find('ol').before("<div class='project_toggle group'><a href='' class='prev'>PREV</a><a href='' class='next'>NEXT</a></div>");
    $(this).find('a.prev').click(function() {
      projects.trigger("project.previous");
      return false;
    });
    $(this).find('a.next').click(function() {
      projects.trigger("project.next");
      return false;
    });
    // this really should be called inside the plugin
    // but for some reason it is calculating the height wrong at initialisation.
    projects.css("height", projects.children('li:nth-child(1)').outerHeight(true) + "px");
  }

  // expose those bad boys to jQuery NS.
  $.fn.extend({
    theWork: _work
  });

})(jQuery);

// PLUGINS
(function($) {
  $.fn.imageCycler = function(options) {
  settings = jQuery.extend({
    direction: "vertical"
  },
  options);
    $(this).each(function() {
      $(this).wrap("<div class='pimg-wrap' />");
      var list = $(this);
      list.css('position', "relative");
      var animation = function(delay) {
        var animation_css = {}
        var animation_prop = "top";
        if (settings.direction == "horizontal") {
          animation_prop = "left";
          animation_css[animation_prop] = "-=" + liWidthAt(list, 1) + "px";
        } else {
          animation_css[animation_prop] = "-=" + liHeightAt(list, 1) + "px";
        }
        list.animate(animation_css, 1000, 'easeInOutQuad', setTimeout(function() {
          list.children('li:first').clone().appendTo(list);
          list.children('li:first').remove();
          list.css(animation_prop, 0);
        },
        (delay / 2)));
      }
      var interval;
      list.bind("pimg.start",
      function(delay) {
        if (!(Number(delay) > 0)) {
        var delay = 5000; 
        }
        interval = setInterval(animation, delay, delay);
      });
      list.bind("pimg.stop",
      function() {
        clearInterval(interval);
      });
    });
  };

  $.fn.scrollList = function(options) {
    var list = $(this);
    var currentItem = 0;
    
    var settings = settings = jQuery.extend({
      name: "scrollList",
      animate_callback: $.noop
    }, options);

    function name_callback(action) {
      return settings.name + "." + action;
    }

    list.addClass('scrollist');
    list.width(listWidth(list) + 'px');
    list.bind(name_callback("go"),
    function(e, target) {
      if (anchor = (String(target)).match(/#(\w+[_-]\w+)/)) {
        var next_el = document.getElementById(list.children(':first').attr('id'));
        var target_el = document.getElementById(anchor[1]);
        var id = 0;
        while ( !! next_el && (next_el.id != anchor[1])) {
          next_el = next_el.nextSibling;
          if (next_el && next_el.id) {
            id += 1;
          };
        }
        target = id;
      };

      var children = list.children('li').size();
      if (target >= children) {
        target = children - 1;
      };
      
      if (target < 0) {
        target = 0;
        list.animate({
          left: target
        },
        'slow', 'easeInOutQuad', settings.animate_callback(liAt(list, (target+1))) );
      } else {
        if (target > currentItem) {
          list.animate({
            left: "-=" + (liDistance(list, currentItem, target - 1) + "px")
          },
          'slow', 'easeInOutQuad', settings.animate_callback(liAt(list, (target+1))) );
        } else if (target < currentItem) {
          list.animate({
            left: "+=" + (liDistance(list, target, currentItem - 1) + "px")
          },
          'slow', 'easeInOutQuad', settings.animate_callback(liAt(list, (target+1))) );
        };
      };
      
      currentItem = target;
      
      list.animate({height: liHeightAt(list, currentItem + 1) + "px"});
    });
            
    list.bind(name_callback("previous"),
    function(e, target) {
      list.trigger(name_callback("go"), currentItem - 1);
    });

    list.bind(name_callback("next"),
    function(e, target) {
      list.trigger(name_callback("go"), currentItem + 1);
    });  

    return $(this);
  };

  // COMMON FUNCTIONS
  function css(el, prop) {
    return parseInt($.css(el[0], prop), 10) || 0;
  }

  function listWidth(list) {
    return $(list).children('li').map(
    function() {
      return $(this).outerWidth();
    }
    ).sum();
  }

  function liWidthAt(list, n) {
    return liAt(list, n).outerWidth(true);
  }

  function liHeightAt(list, n) {
    return liAt(list, n).outerHeight(true);
  }

  function liAt(list, n) {
    return list.children('li:nth-child(' + n + ')');
  }

  function liDistance(list, from, to) {
    var h = 0;
    for (var i = to; i >= from; i--) {
      h += liWidthAt(list, (i + 1));
    };
    return h;
  }

})(jQuery);