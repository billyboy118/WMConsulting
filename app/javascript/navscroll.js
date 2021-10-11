window.onscroll = function () {
  var scroll = $(window).scrollTop();
  //console.log(scroll);
  if (scroll > 200) {
    console.log('a');
    $('.navigation').addClass('sticky-header');
  } else {
    console.log('a');
    $('.navigation').removeClass('sticky-header');
  }
};
