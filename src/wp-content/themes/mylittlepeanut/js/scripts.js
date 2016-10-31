jQuery(function ($){
	
	var sideslider = $('[data-toggle=collapse-side]');
	var sel = sideslider.attr('data-target');
	
	sideslider.click(function(event) {
		if(Modernizr.mq('(max-width:992px)')){
            //$(this).toggleClass("close-text");
            $("#navbar-hamburger").toggleClass("hidden");
			$("#navbar-close").toggleClass("hidden");
			$(this).toggleClass("collapsed");		
            $(sel).toggleClass('in');
            $(sel).addClass("activated").toggleClass("active");
            $("body").toggleClass("disable-scrolling");    
        } 
	});
	
	$(window).on('resize',function() {
		if(Modernizr.mq('(min-width:992px)')){
			$(".side-collapse").removeClass("activated");  
            $("body").removeClass("disable-scrolling");
            $(sel).removeClass("compact-navbar");
            $('.navbar-inverse').removeClass("compact");
            $(".logo-right img").removeClass("compact");
		}		
	});    
	
	$('.navbar-nav').find('a').on('click', function(e){
        //console.log($(this).parent().hasClass("menu-item-has-children"));
        if(! $(this).parent().hasClass("menu-item-has-children")){
            $('.navbar-toggle').trigger('click');    
        }        
	});
    
    //var element = $("#about").offset().top;
    var trigger = 200;
    $(window).scroll(function(){
        var y = $(window).scrollTop();
        console.log("y: "+ y);
        //console.log("element: "+ element);
        if(Modernizr.mq('(min-width:992px)')){
            if (y >= trigger){
                $(sel).addClass("compact-navbar");
                $('.navbar-inverse').addClass("compact");
                $(".logo-right img").addClass("compact");
            }else {
                $(sel).removeClass("compact-navbar");
                $('.navbar-inverse').removeClass("compact");
                $(".logo-right img").removeClass("compact");
            }
        }
    });
}); 