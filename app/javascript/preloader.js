window.load = function () {
  document.getElementById('preloader').style.display = 'none';
  }
  $(window).on('load', function () {
    $('#preloader').fadeOut('slow', function () {
      $(this).remove();
    });
  });



//Hero Slider
// $('.hero-slider').slick({
//   autoplay: true,
//   infinite: true,
//   arrows: true,
//   prevArrow: '<button type=\'button\' class=\'prevArrow\'></button>',
//   nextArrow: '<button type=\'button\' class=\'nextArrow\'></button>',
//   dots: false,
//   autoplaySpeed: 7000,
//   pauseOnFocus: false,
//   pauseOnHover: false
// });
// $('.hero-slider').slickAnimation();