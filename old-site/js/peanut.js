$(document).ready(function(){
	console.log("sup");
	//$.mobile.ignoreContentEnabled = true;
	//free shipping within canada
	var slideshowLoaded = false;
	var slider = "";
	var data = "";
	var lbData = "";
	window.sleepsacks = [{	"id":"ss0",
						"title":"Ladybug Sleep Sack",
						"image":"sleepsack0.jpg",
						"price":"$38.00",
						"shopifyID":"ladybugs",
						"details":"<p><b>Ladybug, ladybug, fly away home</b> - right into bed in this cozy sleep sack</p>Luxurious French terry<br/>80% bamboo viscose 20% organic cotton"},

					{	"id":"ss1",
						"title":"Foxes Sleep Sack",
						"image":"sleepsack1.jpg",
						"price":"$38.00",
						"shopifyID":"sleep-sack",
						"details":"<p><b>Sly foxes on a dusty blue background</b></p>Luxurious French terry<br/>80% bamboo viscose 20% organic cotton"},

					{	"id":"ss2",
						"title":"Bugs Sleep Sack",
						"image":"sleepsack2.jpg",
						"price":"$38.00",
						"shopifyID":"bugs",
						"details":"<p><b>Mint green bug print for your future bug catcher</b></p>Luxurious French terry<br/>80% bamboo viscose 20% organic cotton"},

					{	"id":"ss3",
						"title":"Space Robot Sleep Sack",
						"image":"sleepsack3.jpg",
						"price":"$38.00",
						"shopifyID":"space-robot",
						"details":"<p><b>Let your little one explore space in their dreams</b></p>Luxurious French terry<br/>80% bamboo viscose 20% organic cotton"},

					{	"id":"ss4",
						"title":"Retro Rides Sleep Sack",
						"image":"sleepsack4.jpg",
						"price":"$38.00",
						"shopifyID":"retro-rides",
						"details":"<p><b>Take a trip in one of these retro rides</b></p>Soft and fluffy fleece<br/>80% organic cotton 20% bamboo charcoal"},

					{	"id":"ss5",
						"title":"Sunset Sleep Sack",
						"image":"sleepsack5.jpg",
						"price":"$38.00",
						"shopifyID":"birds",
						"details":"<p><b>Relax and enjoy the sunset.</b></p>Soft and fluffy fleece<br/>80% organic cotton 20% bamboo charcoal"},

					{	"id":"ss6",
						"title":"Hot Air Balloon Panda Sleep Sack",
						"image":"sleepsack6.jpg",
						"price":"$38.00",
						"shopifyID":"hot-air-balloon-panda",
						"details":"<p><b>Soar into the clouds with a panda</b></p>Soft and fluffy fleece. 80% organic cotton 20% bamboo charcoal"}];

	window.rompers = [{	"id":"r0",
						"title":"Boys - Retro Rides",
						"image":"romper0.jpg",
						"price":"$25.00",
						"shopifyID":"retro-rides-1",
						"details":"Retro vehicle kanga pocket with orange chevron trim<br/>Short sleeves<br/>100% organic cotton"},

					{	"id":"r1",
						"title":"Girls - Lady Bugs",
						"image":"romper1.jpg",
						"price":"$25.00",
						"shopifyID":"lady-bugs",
						"details":"Red and orange ladybug print.<br/>Cap sleeves<br/>100% organic cotton"},

					{	"id":"r2",
						"title":"Boys - Hot Air Balloon Panda",
						"image":"romper2.jpg",
						"price":"$25.00",
						"shopifyID":"hot-air-balloon-panda-1",
						"details":"Panda kanga pocket with orange chevron trim<br/>Short sleeves<br/>100% organic cotton"},

					{	"id":"r3",
						"title":"Girls - Bugs",
						"image":"romper3.jpg",
						"price":"$25.00",
						"shopifyID":"bugs-1",
						"details":"Mint green with bug print, pool green trim <br/>Cap sleeves<br/>100% organic cotton"},

					{	"id":"r4",
						"title":"Boys - Sunset",
						"image":"romper4.jpg",
						"price":"$25.00",
						"shopifyID":"birds-1",
						"details":"Sunset kanga pocket with green chevron trim <br/>Sleeveless<br/>100% organic cotton"},				
					{	"id":"r5",
						"title":"Girls - Elephants",
						"image":"romper5.jpg",
						"price":"$25.00",
						"shopifyID":"elephants",
						"details":"Light coral with elephants <br/>Cap Sleeves<br/>100% organic cotton"},

					{	"id":"r6",
						"title":"Unisex - Space Robot",
						"image":"romper6.jpg",
						"price":"$25.00",
						"shopifyID":"space-robot-1",
						"details":"Space kanga pocket with orange chevron trim <br/>Sleeveless<br/>100% organic cotton"},

					{	"id":"r7",
						"title":"Girls - Bike Spokes",
						"image":"romper7.jpg",
						"price":"$25.00",
						"shopifyID":"girls-spokes",
						"details":"Pool green with birds and bike wheels <br/>Cap Sleeves<br/>100% organic cotton"},

					{	"id":"r8",
						"title":"Unisex - Bike Spokes",
						"image":"romper8.jpg",
						"price":"$25.00",
						"shopifyID":"boys-spokes",
						"details":"Pool green with birds and bike wheels <br/>Sleeveless<br/>100% organic cotton"}];

	window.bibs = [{	"id":"b0",
						"title":"Elephants",
						"image":"bib0.jpg",
						"price":"$8.00",
						"shopifyID":"elephants-1",
						"details":"<p>Grab a matching bib for your romper!<br/>Adjustable snap closure and reversible</p>"},

					{	"id":"b1",
						"title":"Green Chevron",
						"image":"bib1.jpg",
						"price":"$8.00",
						"shopifyID":"green-chevron",
						"details":"<p>Grab a matching bib for your romper!<br/>Adjustable snap closure and reversible</p>"},

					{	"id":"b2",
						"title":"Space Robot",
						"image":"bib2.jpg",
						"price":"$8.00",
						"shopifyID":"space-robot-2",
						"details":"<p>Grab a matching bib for your romper!<br/>Adjustable snap closure and reversible</p>"},

					{	"id":"b3",
						"title":"Retro Rides",
						"image":"bib3.jpg",
						"price":"$8.00",
						"shopifyID":"retro-rides-2",
						"details":"<p>Grab a matching bib for your romper!<br/>Adjustable snap closure and reversible</p>"},

					{	"id":"b4",
						"title":"Hot Air Balloon Panda",
						"image":"bib4.jpg",
						"price":"$8.00",
						"shopifyID":"hot-air-balloon-panda-2",
						"details":"<p>Grab a matching bib for your romper!<br/>Adjustable snap closure and reversible</p>"},

					{	"id":"b5",
						"title":"Pool Green Bike Spokes",
						"image":"bib5.jpg",
						"price":"$8.00",
						"shopifyID":"pool-green-bike-spokes",
						"details":"<p>Grab a matching bib for your romper!<br/>Adjustable snap closure and reversible</p>"},

					{	"id":"b6",
						"title":"Orange Chevron",
						"image":"bib6.jpg",
						"price":"$8.00",
						"shopifyID":"orange-chevron",
						"details":"<p>Grab a matching bib for your romper!<br/>Adjustable snap closure and reversible</p>"}];		

	window.loadInventory = function(items){	
		var ic = $(".item-container");
		var itemClass = "";
		switch(items){
			case sleepsacks:
			itemClass = "ss-items"
			break;
			case rompers:
			itemClass = "r-items"
			break;
			case bibs:
			itemClass = "b-items"
			break;
		}

		//ic.html("");
		//var data = "";
		for(var i=0;i<items.length;i++){
			data += "<div class='"+itemClass+"' style='display:none;float:left;padding-bottom:80px;padding-left:10px;height:225px' id='item-"+items[i].id+"'>";
			data += "<div class='item-display'><a class='various' name='"+items[i].id+"' href='#'>";
			data += "<img src='images/inventory/"+items[i].image+"' width='200'/></a>";			
			data += "<div style='font-size:20px'>"+items[i].title+"</div>";
			data += "<div style='color:#7e7e7e;font-size:19px'>"+items[i].price+"</div>";
			data += "</div>";
			data += "</div></div>";			
			data += "";

			lbData += "<div id='"+items[i].id+"' class='liteboxWrapper' style='display:none;' >";
			lbData += "<div class='litebox-content-container'>";
			lbData += "<a href='#'' class='itemDetailCloseBtn ui-btn ui-icon-delete ui-btn-icon-notext ui-corner-all' style='float:right;margin-right:10px'>No text</a>";

			lbData += "<div class='litebox-image-container'>";
			lbData += "<img src='images/inventory/"+items[i].image+"' width='100%'/></div>";

			lbData += "<div id='item-title'style=''>";
			lbData +=  ""+items[i].title+"</div>";
			lbData += "<div id='item-price' style=''>"+items[i].price+"</div>";
			lbData += "<div id='litebox-container' style=''>";
			//lbData += "<div id='litebox-cartbtn'><div class='buyit-btn' data-button_background_color='593d36' data-button_text_color='ffffff' data-buy_button_text='Add to cart' data-display_size='compact' data-embed_type='product' data-has_image='false' data-product_handle='"+items[i].shopifyID+"' data-product_name='"+items[i].title+"' data-redirect_to='cart' data-shop='my-little-peanut-2015.myshopify.com'></div></div>";
			lbData += "</div><div class='litebox-item-detail'><p>"+items[i].details+"</p></div>"
			lbData += "</div></div>";			
			lbData += "";
		}
		ic.html(data);	
		$("#itemDetailContainer").html(lbData);

		showInventory(sleepsacks);

		$(".various").on("click",function(){
			var item = $(this).attr("name");
			console.log("item: "+ item);
			$("#"+item).fadeIn();
		});

		$(".itemDetailCloseBtn").on("click",function(){
			console.log("click");
			$(this).parent().parent().fadeOut();
		});
	}


	window.showInventory = function(items){
		//console.log("***************");
		var index = 0;
		$(".ss-items").each(function(){
			$(this).css("display","none");
		});

		$(".r-items").each(function(){
			$(this).css("display","none");
		});

		$(".b-items").each(function(){
			$(this).css("display","none");
		});
		
		switch(items){
			case sleepsacks:
			$(".ss-items").each(function(index) {
			    var target = document.getElementById("item-ss"+index);		
				var spinner = new Spinner().spin(target);		    
			    $(this).delay(200*index).fadeIn(300,function(){spinner.stop()});
			    index++;
			});
			window.inventoryLoaded = true;	
			break;

			case rompers:
			$(".r-items").each(function(index) {
			    var target = document.getElementById("item-r"+index);		
				var spinner = new Spinner().spin(target);		    
			    $(this).delay(200*index).fadeIn(300,function(){spinner.stop()});
			    index++;
			});
			window.inventoryLoaded = true;	
			break;

			case bibs:
			$(".b-items").each(function(index) {
			    var target = document.getElementById("item-b"+index);		
				var spinner = new Spinner().spin(target);		    
			    $(this).delay(200*index).fadeIn(300,function(){spinner.stop()});
			    index++;
			});
			window.inventoryLoaded = true;	
			break;
		}		
	}
	
	slider = $(".bxslider")
	slider.bxSlider({
	  	mode: 'fade',
	  	captions: false,
	  	controls:false,
	  	pager:false
	});	

	/*$(".various").fancybox({
		maxWidth	: 900,
		maxHeight	: 600,
		fitToView	: true,
		autoSize	: true,
		closeClick	: false,
		openEffect	: 'fade',
		closeEffect	: 'fade'
	});*/

	$(document).on("pagebeforeshow","#shop",function(){		
		slider.destroySlider();
		showInventory(sleepsacks);
	});

	$("#shop").on("pageshow", function(e){		
		//console.log($("#ShopifyEmbedScript"));
	});

	$(document).on("pagebeforeshow","#about",function(){
		slider.destroySlider();
	});

	$(document).on("pagebeforeshow","#contact",function(){
		slider.destroySlider();  
		//console.log("in contact");
	});

	$("#contact").on("pageshow", function(e) {
		var url = $.mobile.path.get( $( window ).attr( "value" ) );
		//console.log("url: "+ url);
		var par = url.split("?");
		//console.log("par: "+par[1]);
		if(par[1] == "success=true"){
			$("#message-status").fadeIn();
		}
		if(par[1] == "success=false"){
			$("#message-status").html("There was a problem processing your request. Please try again.");
			$("#message-status").css("color","red");
			$("#message-status").fadeIn();
		}
	});

	$(".home-btn").bind().mouseover(function(){		
		$(this).css("background-image","url('images/home-over.png')");
	});
	$(".home-btn").bind().mouseout(function(){		
		$(this).css("background-image","url('images/home.png')");
	});	
	$(".home-btn").bind().click(function(){		
		slider.destroySlider();
		$.mobile.changePage("#home");
		setTimeout(function(){
			slider = $(".bxslider");
			slider.bxSlider({
			  	mode: 'fade',
			  	captions: false,
			  	controls:false,
			  	pager:false
			});
		},300);
	});

	$(".shop-btn").mouseover(function(){		
		$(this).css("background-image","url('images/shop-over.png')");
	});
	$(".shop-btn").mouseout(function(){		
		$(this).css("background-image","url('images/shop.png')");
	}); 
	$(".shop-btn").click(function(event){
		//event.preventDefault();
		//var check = $( "#aboutUs" ).length === 1;
    	//$( "#result" ).text( check );

    	//console.log("click");
    	$.mobile.loadPage( "shop.html");
    	loadInventory(sleepsacks);
		//$.mobile.changePage("#shop");
	});

	function refreshPage(page){
    // Page refresh
	    page.trigger('pagecreate');
	    page.listview('refresh');
	}

	$(".about-btn").mouseover(function(){		
		$(this).css("background-image","url('images/about-over.png')");
	});
	$(".about-btn").mouseout(function(){		
		$(this).css("background-image","url('images/about.png')");
	});
	$(".about-btn").click(function(){		
		$.mobile.changePage("#about");
	});

	$(".contact-btn").mouseover(function(){		
		$(this).css("background-image","url('images/contact-over.png')");
	});
	$(".contact-btn").mouseout(function(){		
		$(this).css("background-image","url('images/contact.png')");
	}); 
	$(".contact-btn").click(function(){		
		$.mobile.changePage("#contact");
	});

	$("#facebookLogo").mouseover(function(){
		$(this).css("background-image","url('images/facebook-logo-over.png')");
	});

	$("#facebookLogo").mouseout(function(){
		$(this).css("background-image","url('images/facebook-logo.png')");
	});

	$("#facebookLogo").on("click",function(){
		window.open('https://www.facebook.com/Mylittlepea2015');
	});

	$("#twitterLogo").mouseover(function(){
		$(this).css("background-image","url('images/twitter-logo-over.png')");
	});

	$("#twitterLogo").mouseout(function(){
		$(this).css("background-image","url('images/twitter-logo.png')");
	});

	$("#twitterLogo").on("click",function(){
		window.open('https://twitter.com/mylittlepea2015');
	});

	$("#pintrestLogo").mouseover(function(){
		$(this).css("background-image","url('images/pintrest-logo-over.png')");
	});

	$("#pintrestLogo").mouseout(function(){
		$(this).css("background-image","url('images/pintrest-logo.png')");
	});

	$("#pintrestLogo").on("click",function(){
		console.log("pinshit");
		$(this).css("background-image","url('images/pintrest-logo.png')");
		/*$("#pinmarklet").remove();
        var e = document.createElement('script');
        e.setAttribute('type','text/javascript');
        e.setAttribute('charset','UTF-8');
        e.setAttribute('id','pinmarklet');
        e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e);*/
        window.open('https://www.pinterest.com/mylittlepea2015/');
        
	});

	$("#sleep-sacks").unbind().bind().click(function(){
		showItems = true;
		showInventory(sleepsacks);				
	});

	$("#rompers").unbind().bind().click(function(){
		showItems = true;
		showInventory(rompers);				
	});

	$("#bibs").unbind().bind().click(function(){
		showItems = true;
		showInventory(bibs);				
	});

	$("#sleep-sacks-m").unbind().bind().click(function(){
		showItems = true;
		showInventory(sleepsacks);				
	});

	$("#rompers-m").unbind().bind().click(function(){
		showItems = true;
		showInventory(rompers);				
	});

	$("#bibs-m").unbind().bind().click(function(){
		showItems = true;
		showInventory(bibs);				
	});

	$(".buyit-btn").bind().unbind().click(function(){
		console.log("");
	})		
});