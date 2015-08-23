$(document).ready(function() {

  $('.scroll-link').on('click',function (e) {
      e.preventDefault();
      var target = this.hash,
      $target = $(target);
      $('html, body').stop().animate({
          'scrollTop': $target.offset().top
      }, 1000, 'swing', function () {
          window.location.hash = target;
      });
  });


  $(window).scroll(function () {
    var height = $('body').height();
    var scrollTop = $(window).scrollTop();


    if ((height-scrollTop)<500 && (scrollTop-height)<0)   {
      $('#about img').css('right', (scrollTop-height));
    };

    if ((height*2-scrollTop)<500 && (scrollTop-height*2)<0)   {
      $('#build img').css('left', (scrollTop-height*2));
    };

  });
}); 