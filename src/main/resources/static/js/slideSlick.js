$(document).ready(function(){
      $('.slick-slider').slick({
        slidesToShow: 1,
        arrows: true,
        dots:true,
        asNavFor: '.terms-nav',
        infinite: false,
        adaptiveHeight: true,
        draggable:true
      });
});