<div class="contact-section-container" id="contact">
	<div class="container">
		<div class="row">
			<div class="contact-heading"><?php echo $heading; ?></div>
			<div class="header-underline"></div>		
			<div class="col-sm-12 col-md-6 contact-form-container">
				<?php gravity_form( 'Contact', $display_title = false, $display_description = false, $display_inactive = false, $field_values = null, $ajax = false, $tabindex, $echo = true ); ?>
			</div>
			<div class="col-sm-12 col-md-6 contact-image-container">
				<img class="" src="<?php echo $image; ?>" alt=""/>		
			</div>
		</div>
	</div>	
</div>