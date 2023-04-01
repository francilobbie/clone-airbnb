import $ from 'jquery';
import 'slick-carousel';

$(document).on('turbolinks:load', function() {
  $('.cards').slick({
    dots: true,
    arrows: true,
    autoplay: true,
    autoplaySpeed: 3000,
    slidesToShow: 1,
    slidesToScroll: 1,
  });
});
