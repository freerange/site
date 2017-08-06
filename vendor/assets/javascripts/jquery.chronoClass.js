/*
 * jQuery ChronoClass Plugin
 * Written by Jase jase@gofreerange.com
 * License: Who cares etc.
 *
 * This silly little ditty basically sits some
 * classes onto an element depending on the
 * time of day.
 *
 * Basic use ..
 *
 * $('body').chronoClass();
 *
 * You can enable days of week, and period of day ..
 *
 * $('body').chronoClass({
 *    dayOfWeek:true,
 *    timeOfDay:false
 * });
 *
 * Read the code if you need more info,
 * or tell me what you wanna know and
 * I'll write it here you swine.
 *
 * Seen on http://gofreerange.com/blog
 *
 * I'd like to thank The Smiths
 * for musical accompaniment whilst I wrote it, yeah?
*/

;(function($) {

  Date.hourToPeriod = function (date) {
    if (!date) { date = new Date() };
    var period;
    var hour = date.getHours();
    if (hour > 5 && hour < 12) {
      period = 'morning';
    } else if (hour >= 12 && hour < 18) {
      period = 'afternoon';
    } else if (hour >= 18) {
      period = 'evening';
    };
    return period;
  }

  // What does the chronoClass plugin do?
  $.fn.chronoClass = function(options) {
    var opts = $.extend({}, $.fn.chronoClass.defaults, options);

    return this.each(function() {
      var $this = $(this);

      // Support for the Metadata Plugin.
      var o = $.meta ? $.extend({}, opts, $this.data()) : opts;

      var now = new Date();

      if (o.dayOfWeek) {
        var dayNames = ['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat'];
        $this.addClass(dayNames[now.getDay()]);
      };

      if (o.timeOfDay) {
        $this.addClass(Date.hourToPeriod(now));
      };

    });

  };

  // default options
  $.fn.chronoClass.defaults = {
    dayOfWeek:true,
    timeOfDay:false,
  };

})(jQuery);
