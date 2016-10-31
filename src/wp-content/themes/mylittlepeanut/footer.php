		
			<footer class="page-footer">			
				<nav class="navbar">
					<div class="container">
						<div class="row">
							<div class="col-xs-6 col-md-4 footer-nav-container">
								<div class="footer-column-header"><?php the_field('navigation_header', 'option'); ?></div>
								<?php
									wp_nav_menu( array(
										'container' => false,
										'menu' => 'FooterMenu',
										'menu_class' => 'footer-menu',
										'menu_id' => 'footer-menu',
										'link_before' => '',
										'link_after' => '',
										'walker' => '',
									));
								?>	
							</div>
							<div class="col-xs-6 col-md-4 footer-products-container">
								<div class="footer-column-header"><?php the_field('products_header', 'option'); ?></div>
								<?php
									wp_nav_menu( array(
										'container' => false,
										'menu' => 'FooterProductMenu',
										'menu_class' => 'footer-product-menu',
										'menu_id' => 'product-menu',
										'link_before' => '',
										'link_after' => '',
										'walker' => '',
									));
								?>
							</div>
							<div class="col-xs-6 col-md-4 footer-sm-link-container">
								<div class="footer-column-header"><?php the_field('social_header', 'option'); ?></div>
								<a href="<?php the_field('facebook_link', 'option'); ?>" target="_blank">
									<span class="<?php the_field('facebook_icon', 'option'); ?>"></span>
								</a>
								<a href="<?php the_field('twitter_link', 'option'); ?>" target="_blank" >
									<span class="<?php the_field('twitter_icon', 'option'); ?>"></span>
								</a>
								<a href="<?php the_field('pinterest_link', 'option'); ?>" target="_blank">
									<span class="<?php the_field('pinterest_icon', 'option'); ?>"></span>
								</a>
							</div>
						</div>												
					</div>
					<div class="col-xs-12 footer-copyrite-section">
						<sup>©</sup>2016 My Little Peanut. All rights reserved. 
					</div>
				</nav>
			</footer>
		<?php wp_footer(); ?>
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
          ga('create', 'UA-63966218-1', 'auto');
          ga('send', 'pageview');
        </script>
	</body>
</html>

<!--  



-->
