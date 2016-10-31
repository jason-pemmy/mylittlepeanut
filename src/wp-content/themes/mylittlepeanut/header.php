<!doctype html>
<html class="no-js" <?php language_attributes(); ?>>
	<head>
		<meta charset="<?php bloginfo( 'charset' ); ?>">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        
		<title><?php wp_title( '|', true, 'right' );?></title>
		<link rel="profile" href="http://gmpg.org/xfn/11" />
		<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
		<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />        
        <?php wp_head(); ?>
	</head>
	<body id="home">
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse-side" data-target="#myNavbar">
						<div id="navbar-hamburger">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span> 
						</div>	
						<div id="navbar-close" class="hidden">
							<span class="icon-cross"></span>
						</div>
					</button>
					
					<!--<div class="close-text">
						<span class="icon-close icon"></span>
						<p class="btn-text"><?php _e('Close', 'the-theme'); ?></p>
					</div>-->
					
					<a class="navbar-left" href="<?php echo get_home_url(); ?>">
						<img class="logo" src="<?php echo get_stylesheet_directory_uri(); ?>/images/logo.png" alt="<?php bloginfo('name');?>">
					</a>
                    <div class="logo-right"><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/peanut.png" alt="<?php bloginfo('name');?>"></div>
					<div class="side-collapse in activated" id="myNavbar">
						<?php
							wp_nav_menu( array(
								'container' => false,
								'menu' => 'MainMenu',
								'menu_class' => 'nav navbar-nav peanut-nav',
								'menu_id' => 'main-menu',
								'walker' => new wp_bootstrap_navwalker()
							));
						?>
						<div class="mobile-image-bottom"></div>
					</div>
				</div>				
			</div>
		</nav>