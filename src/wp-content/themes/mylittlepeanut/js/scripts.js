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
            $("body").removeClass("disable-scrolling");
		}		
	});    
	
	$('.navbar-nav').find('a').on('click', function(e){
        console.log($(this).parent().hasClass("menu-item-has-children"));
        if(! $(this).parent().hasClass("menu-item-has-children")){
            $('.navbar-toggle').trigger('click');    
        }        
	});
});