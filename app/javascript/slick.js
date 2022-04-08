$(document).on('turbolinks:load', function() {
  $(function() {
    $('.slider').slick({
        nfinite: true,
              slidesToShow: 1,
              slidesToScroll: 1,
              arrows: false,
              fade: true,
              speed: 2000,
              autoplaySpeed: 2000, //再生スピード
              autoplay: true,
              pauseOnFocus: false,
              pauseOnHover: false,
              pauseOnDotsHover: false
    });
  });
});