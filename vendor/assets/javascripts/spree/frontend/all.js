// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs

//= require spree/frontend
//= require spree/product_zoom
//= require_tree .

$(document).ready(function(){
  $('.bxslider').bxSlider({
 	auto: true,
  });
});

// from http://www.paulund.co.uk/smooth-scroll-to-internal-links-with-jquery
// jumps to anything with a href of # to the element with the same name
// also works between pages! :)

$(document).ready(function(){
	$('a[href^="#"]').on('click',function (e) {
	    e.preventDefault();

	    var target = this.hash,
	    $target = $(target);

	    $('html, body').stop().animate({
	        'scrollTop': $target.offset().top
	    }, 500, 'swing', function () {
	        window.location.hash = target;
	    });
	});
});
