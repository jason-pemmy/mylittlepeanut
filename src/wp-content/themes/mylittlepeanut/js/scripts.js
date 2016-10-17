jQuery(function ($){
	
	var sideslider = $('[data-toggle=collapse-side]');
	var sel = sideslider.attr('data-target');
	
	sideslider.click(function(event) {
		$(this).toggleClass("close-button");
		$(this).toggleClass("collapsed");
		$(sel).toggleClass('in');
		$(sel).addClass("activated").toggleClass("active");
		$("body").toggleClass("disable-scrolling");
	});
	
	$(window).on('resize',function() {
		if(Modernizr.mq('(min-width:992px)')){
			$(".side-collapse").removeClass("activated");   
		}		
	});
	
	$('.navbar-nav').find('a').on('click', function(e){
	  $('.navbar-toggle').trigger('click');
	});
	
});