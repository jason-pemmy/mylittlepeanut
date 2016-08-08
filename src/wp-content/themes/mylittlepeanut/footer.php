		</main>
			<footer class="page-footer">
			
				<nav class="navbar navbar-default navbar-fixed-bottom">
					<div class="container">
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
				</nav>
			</footer>
		<?php wp_footer(); ?>
	</body>
</html>
