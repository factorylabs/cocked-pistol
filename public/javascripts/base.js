
(function() {
  var branding = $('#branding').first();

  branding.bind('webkitTransitionEnd', function(e) {
    console.log('complete!');
  });

  // branding.addClass('FadeOut');

}());
