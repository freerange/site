// https://github.com/freerange/jQuery-ChronoClass
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
        var dayNames = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun'];
        $this.addClass(dayNames[now.getDay()-1]);
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
