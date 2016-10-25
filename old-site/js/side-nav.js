$(function(){
	var   $nav = $( '#nav' )
	  , aRules = [];

	$("#home-btn").mouseover(function(){		
		$(this).css("background-image","url('images/home-over.png')");
	});
	$("#home-btn").mouseout(function(){		
		$(this).css("background-image","url('images/home.png')");
	});	
	$("#home-btn").click(function(){		
		scrollToSection("header");
	});


	$("#shop-btn").mouseover(function(){		
		$(this).css("background-image","url('images/shop-over.png')");
	});
	$("#shop-btn").mouseout(function(){		
		$(this).css("background-image","url('images/shop.png')");
	}); 
	$("#shop-btn").click(function(){		
		scrollToSection("shop");
	});

	$("#about-btn").mouseover(function(){		
		$(this).css("background-image","url('images/about-over.png')");
	});
	$("#about-btn").mouseout(function(){		
		$(this).css("background-image","url('images/about.png')");
	});
	$("#about-btn").click(function(){		
		scrollToSection("about");
	});

	$("#contact-btn").mouseover(function(){		
		$(this).css("background-image","url('images/contact-over.png')");
	});
	$("#contact-btn").mouseout(function(){		
		$(this).css("background-image","url('images/contact.png')");
	}); 
	$("#contact-btn").click(function(){		
		scrollToSection("contact");
	});





	/*$( 'section' ).each( function(){
		var  $this = $( this )
		  , sTitle = $this.attr( 'data-nav' ) || $this.find( 'h2:first' ).text()
		  ,    sId = $this.attr( 'id' ).split( '-' ).pop()
		  ;

		aRules.push( 'body.section-' + sId + ' #nav li.' + sId + ' a');
		$nav.append( '<li class="' + sId + '"><h1><span>' + sTitle + '</span></h1><a href="#' + sId + '">' + sId + '</a></li>' )
	} );

	$( '<style>' + aRules.join( ', ' ) + '{ background : url( images/grey-pink-dot.png ) 0 100% no-repeat; }</style>' ).appendTo( $( 'head' ) );*/

	/*$nav
		.on( 'click', 'a', function(){
			scrollToSection( $( this ).attr( 'href' ).substr( 1 ) );
		} )
		.on( 'mouseenter', 'li', function(){
			$( this ).find( 'h1' ).stop().show().animate({ opacity:1, duration: 100, left: 30 }, { queue: false });
		} )
		.on( 'mouseleave', 'li', function(){
			var self = this;
			$( this ).find( 'h1' ).stop().animate({ opacity:0, duration: 100, left: 15 }, { queue: false, complete : function(){ $( this ).hide(); } });
		});

	$( 'body' ).on( 'click', 'a', function( ev ){
		var href = this.getAttribute( 'href' ) || '';

		console.log("href: "+href.substr( 1 ) );

		if( href.indexOf( '#' ) === 0 ){
			ev.preventDefault();
			scrollToSection( href.substr( 1 ) );
		}
	} );*/
});