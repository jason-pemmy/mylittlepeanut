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
	<body>
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span> 
					</button>
					<a class="navbar-left" href="<?php echo get_home_url(); ?>">
						<img class="logo" src="<?php echo get_stylesheet_directory_uri(); ?>/images/logo.png" alt="<?php bloginfo('name');?>">
					</a>
					<div class="collapse navbar-collapse" id="myNavbar">
						<?php
							wp_nav_menu( array(
								'container' => false,
								'menu' => 'MainMenu',
								'menu_class' => 'nav navbar-nav peanut-nav',
								'menu_id' => 'main-menu',
								'link_before' => '',
								'link_after' => '',
								'walker' => '',
							));
						?>
					</div>
				</div>				
			</div>
		</nav>
		