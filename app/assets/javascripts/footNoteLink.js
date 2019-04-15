//= require jquery.scrollTo-1.4.2.min

(function($) {
  $.fn.footNoteLink = function (offset) {
    $(this).click(function () {
      var offsetPadding = 10;
      var target = $(this).attr('href');
      if (target.match('#')) {
        target = target.split('#')[1];
      };
      var xOffset = offsetPadding + offset;
      $.scrollTo($('sup[id='+target+']'), 1500, { offset: { top: -xOffset } });
      return false;
    });
  }
})(jQuery);

jQuery(document).ready(function($) {
  $('a[href*=fnref]').footNoteLink($('#blog_nav').height() || 0);
});
