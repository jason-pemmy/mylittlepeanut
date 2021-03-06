<?php
class TBK_Shortcodes extends Base_Factory {
	function __construct() {
		if ( function_exists( 'vc_map' ) ) {
			$this->custom_bake();
			$dir = get_stylesheet_directory() . '/views/vc-templates';
			vc_set_shortcodes_templates_dir( $dir );
		}
		add_action( 'after_setup_theme', array( &$this, 'setup_shortcodes' ), 100 );
	}
	public function setup_shortcodes() {
		$this->register( 'hours', false );
		$this->register( 'phone', false );
		$this->register( 'email', false );
		$this->register( 'address', false );
		$this->register( 'hero-banner', false );
		$this->register( 'form-sample', false );
		$this->register( 'frontend-tool', false );
		$this->register( 'security-monitor-navbar', true );
		$this->register( 'security-monitor-content-list', true );
		//styling elements
		$this->register( 'style-guide', array(
			'category' => 'tbk styles',
		) );
		$this->register( 'wptest-io', array(
			'name' => 'wptest.io Formatting',
			'category' => 'tbk styles',
		) );
		$button_params = array(
			array(
				'type' => 'vc_link',
				'heading' => 'URL (Link)',
				'param_name' => 'link',
				'description' => 'Button link.',
			),
			array(
				'type' => 'textfield',
				'heading' => 'Text on the button',
				'holder' => 'button',
				'class' => 'vc_btn',
				'param_name' => 'title',
				'value' => 'Text on the button',
				'description' => 'Text on the button.',
			),
		);
		$this->register( 'image-bar', array(
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'heading' => 'Images',
					'param_name' => 'images',
					'type' => 'attach_images',
				),
			),
		) );
		$this->register( 'button', array(
			'name' => 'Button',
			'base' => 'button',
			'description' => 'Eye catching button',
			'params' => array_merge( $button_params, array(
				array(
					'type' => 'textfield',
					'heading' => 'Leading Text',
					'param_name' => 'leading_title',
					'description' => 'Text on the button (smaller).',
				),
				array(
					'type' => 'dropdown',
					'heading' => 'Color',
					'param_name' => 'color',
					'value' => array(
						'blue',
						'yellow',
					),
					'description' => 'Button color',
				),
			) ),
		) );
		
		$this->register( 'partner', array(
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'heading' => 'Image',
					'param_name' => 'image',
					'type' => 'attach_image',
				),
                array(
					'type' => 'textfield',
					'heading' => 'Heading',
					'param_name' => 'heading',
				),
				array(
					'type' => 'textarea',
					'heading' => 'Copy',
					'param_name' => 'copy',
				),
                array(
					'type' => 'textfield',
					'heading' => 'Link',
					'param_name' => 'link',
				),
			),
		) );
		
		$this->register( 'contact-section', array(
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'heading' => 'Image',
					'param_name' => 'image',
					'type' => 'attach_image',
				),
                array(
					'type' => 'textfield',
					'heading' => 'Heading',
					'param_name' => 'heading',
				),
			),
		) );
        
        $this->register( 'product-feature', array(
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'heading' => 'Image',
					'param_name' => 'image',
					'type' => 'attach_image',
				),
                array(
					'type' => 'textfield',
					'heading' => 'Copy',
					'param_name' => 'copy',
				),
                array(
					'type' => 'textfield',
					'heading' => 'Link',
					'param_name' => 'link',
				),
			),
		) );
		
		$this->register( 'product', array(
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'heading' => 'Image',
					'param_name' => 'image',
					'type' => 'attach_image',
				),
                array(
					'type' => 'textfield',
					'heading' => 'Name',
					'param_name' => 'name',
				),
				array(
					'type' => 'textfield',
					'heading' => 'Price',
					'param_name' => 'price',
				),
				array(
					'type' => 'textarea',
					'heading' => 'Description',
					'param_name' => 'description',
				),
			),
		) );
		
		$this->register( 'about-section', array(
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'heading' => 'Image',
					'param_name' => 'image',
					'type' => 'attach_image',
				),
                array(
					'type' => 'textfield',
					'heading' => 'Copy',
					'param_name' => 'copy',
				),
                array(
					'type' => 'textfield',
					'heading' => 'Heading',
					'param_name' => 'heading',
				),
                array(
					'type' => 'textarea',
					'heading' => 'Signature',
					'param_name' => 'signature',
				),
			),
		) );        
        
        $this->register( 'hero-banner', array(
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'heading' => 'Background Image',
					'param_name' => 'image',
					'type' => 'attach_image',
				),
                array(					
					'heading' => 'Heading',
					'param_name' => 'heading',
                    'type' => 'textfield',
				),
                array(					
					'heading' => 'Copy',
					'param_name' => 'copy',
                    'type' => 'textfield',
				),
			),
		) );
        
        $this->register( 'secondary-hero-banner', array(
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'heading' => 'Background Image',
					'param_name' => 'image',
					'type' => 'attach_image',
				),
                array(					
					'heading' => 'Heading',
					'param_name' => 'heading',
                    'type' => 'textfield',
				),
                array(					
					'heading' => 'Copy',
					'param_name' => 'copy',
                    'type' => 'textfield',
				),
			),
		) );
        
		$this->register( 'basic-container', array(
			'name' => 'Basic Container',
			'base' => 'basic_container',
			'as_parent' => array( 'except' => '' ),
			'is_container' => true,
			'content_element' => true,
			'show_settings_on_create' => false,
			'params' => array(
				array(
					'type' => 'textfield',
					'heading' => 'Classes',
					'param_name' => 'classes',
				),
			),
			'js_view' => 'VcColumnView',
		) );
        
		$this->register( 'basic-container-narrow', array(
			'name' => 'Basic Container (Narrow)',
			'base' => 'basic_container_narrow',
			'as_parent' => array( 'except' => '' ),
			'is_container' => true,
			'content_element' => true,
			'show_settings_on_create' => false,
			'params' => array(
				array(
					'type' => 'textfield',
					'heading' => 'Classes',
					'param_name' => 'classes',
				),
			),
			'js_view' => 'VcColumnView',
		) );
        
        $this->register( 'features-container', array(
			'name' => 'Features Container',
			'base' => 'features_container',
			'as_parent' => array( 'only' => 'product-feature' ),
			'is_container' => true,
			'content_element' => true,
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'type' => 'textfield',
					'heading' => 'Classes',
					'param_name' => 'classes',
				),
				array(
					'type' => 'textfield',
					'heading' => 'Heading',
					'param_name' => 'heading',
				),
			),
			'js_view' => 'VcColumnView',
		) );
		
		$this->register( 'product-container', array(
			'name' => 'Product Container',
			'base' => 'product_container',
			'as_parent' => array( 'only' => 'product' ),
			'is_container' => true,
			'content_element' => true,
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'type' => 'textfield',
					'heading' => 'Classes',
					'param_name' => 'classes',
				),
				array(
					'type' => 'textfield',
					'heading' => 'Heading',
					'param_name' => 'heading',
				),
			),
			'js_view' => 'VcColumnView',
		) );
        
        $this->register( 'wtb-container', array(
			'name' => 'WTB Container',
			'base' => 'wtb_container',
			'as_parent' => array( 'only' => 'partner' ),
			'is_container' => true,
			'content_element' => true,
			'show_settings_on_create' => true,
			'params' => array(
				array(
					'type' => 'textfield',
					'heading' => 'Classes',
					'param_name' => 'classes',
				),
				array(
					'type' => 'textfield',
					'heading' => 'Heading',
					'param_name' => 'heading',
				),
                array(
					'heading' => 'Image',
					'param_name' => 'image',
					'type' => 'attach_image',
				),
			),
			'js_view' => 'VcColumnView',
		) );
	}
	public function register( $tag, $vc_map = array() ) {
		add_shortcode( $tag, array( &$this, strtolower( str_replace( '-', '_', $tag ) ) ) );
		if ( function_exists( 'vc_map' ) && false !== $vc_map ) {
			$vc_map = shortcode_atts( array(
				'name' => humanize( $tag ),
				'base' => $tag,
				'category' => 'tbk',
				'show_settings_on_create' => false,
				'description' => null,
				'params' => array(),
				'js_view' => null,
				'as_parent' => null,
				'as_child' => null,
				'content_element' => null,
				'custom_markup' => null,
				'default_content' => null,
				'is_container' => false,
			), $vc_map );
			$vc_map = apply_filters( 'register_' . $tag, $vc_map );
			vc_map( $vc_map );
		}
	}
	function custom_bake() {
		//customize existing vc elements
		vc_remove_element( 'vc_button' );
	}
	/*function hero_banner( $atts ) {
		$atts = shortcode_atts( array(
				'parallax' => false,
				'title' => null,
		), $atts );
		if ( empty( $atts['title'] ) ) {
			$atts['title'] = get_the_title();
		}
		$related = get_query_var( 'related' );
		$post_id = is_archive() ? - 1 : get_the_ID();
		$hide = get_field('hide_hero_banner', $post_id);
		if($hide) {
			return;
		}
		$thumb_id = The_Theme::get_post_thumbnail_id( ( ! empty( $related ) ? $related->ID : $post_id ) );
		$src = The_Theme::responsive_bg( $thumb_id, 'hero-banner' );
		$atts['banner_attr'] = $src;
		return TBK_Render::shortcode_view( 'hero-banner', apply_filters( 'hero_banner', $atts ) );
	}*/
	function phone() {
		$phone = get_field( 'phone', 'options' );
		return '<a href="tel:' . $phone . '">' . $phone . '</a>';
	}
	function email() {
		$email = get_field( 'email', 'options' );
		return '<a href="' . antispambot( $email, 1 ) . '">' . antispambot( $email ) . '</a>';
	}
	function address() {
		return wpautop( get_field( 'address', 'options' ) );
	}
	function twitter() {
		return get_field( 'twitter', 'options' );
	}
	function facebook() {
		return get_field( 'facebook', 'options' );
	}
	function youtube() {
		return get_field( 'youtube', 'options' );
	}
	function hours() {
		return wpautop( get_field( 'hours', 'options' ) );
	}
	function style_guide() {
		return TBK_Render::shortcode_view( 'style-guide' );
	}
	function wptest_io() {
		return TBK_Render::shortcode_view( 'wptest-io.php' );
	}
	function button( $atts ) {
		$atts = shortcode_atts( array(
			'color' => 'blue',
			'link' => null,
			'title' => 'Learn More',
			'leading_title' => null,
		), $atts );
		if( ! empty($atts['link'])) {
			$atts['link'] = vc_build_link( $atts['link'] );
		}
		return TBK_Render::shortcode_view( 'button', $atts );
	}
	function image_bar( $atts ) {
		$atts = shortcode_atts( array(
			'images' => null,
		), $atts );
		if ( ! empty( $atts['images'] ) ) {
			$atts['images'] = explode( ',', $atts['images'] );
			return TBK_Render::shortcode_view( 'images-bar', $atts );
		}
		return false;
	}
    
    
    
	function frontend_tool() {
		return TBK_Render::shortcode_view( 'frontend-tool' );
	}
    
    function hero_banner( $atts ) {
		$atts = shortcode_atts( array(
			'image' => null,
			'heading' => null,
            'copy' => null,
		), $atts );

		if( ! empty( $atts['image'] ) ) {
			$atts['image'] = TBK_Theme::get_attachment_image_url( $atts['image'], 'hero-banner' );
		}
        
        if(is_front_page()){
            return TBK_Render::shortcode_view( 'hero-banner', $atts );    
        }		
	}
    
    function secondary_hero_banner( $atts ) {
		$atts = shortcode_atts( array(
			'image' => null,
			'heading' => null,
            'copy' => null,
		), $atts );

		if( ! empty( $atts['image'] ) ) {
			$atts['image'] = TBK_Theme::get_attachment_image_url( $atts['image'], 'secondary-hero-banner' );
		}

		return TBK_Render::shortcode_view( 'secondary-hero-banner', $atts );
	}
    
    function product_feature( $atts ) {
		$atts = shortcode_atts( array(
			'image' => null,
			'copy' => null,
            'link' => null,
		), $atts );

		if( ! empty( $atts['image'] ) ) {
			$atts['image'] = TBK_Theme::get_attachment_image_url( $atts['image'], 'product-feature' );
		}

		return TBK_Render::shortcode_view( 'product-feature', $atts );
	}
	
	function product( $atts ) {
		$atts = shortcode_atts( array(
			'image' => null,
			'name' => null,
			'price' => null,
			'description' => null,
		), $atts );

		if( ! empty( $atts['image'] ) ) {
			$atts['image'] = TBK_Theme::get_attachment_image_url( $atts['image'], 'product' );
		}

		return TBK_Render::shortcode_view( 'product', $atts );
	}
	
	function contact_section( $atts ) {
		$atts = shortcode_atts( array(
			'image' => null,			
            'heading' => null,            
		), $atts );

		if( ! empty( $atts['image'] ) ) {
			$atts['image'] = TBK_Theme::get_attachment_image_url( $atts['image'], 'contact-section' );
		}

		return TBK_Render::shortcode_view( 'contact-section', $atts );
	}
	
	function partner( $atts ) {
		$atts = shortcode_atts( array(
			'image' => null,			
            'heading' => null,            
			'copy' => null,            
            'link' => null,            
		), $atts );

		if( ! empty( $atts['image'] ) ) {
			$atts['image'] = TBK_Theme::get_attachment_image_url( $atts['image'], 'partner' );
		}

		return TBK_Render::shortcode_view( 'partner', $atts );
	}
    
    function about_section( $atts ) {
		$atts = shortcode_atts( array(
			'image' => null,
			'copy' => null,
            'heading' => null,
            'signature' => null,
		), $atts );

		if( ! empty( $atts['image'] ) ) {
			$atts['image'] = TBK_Theme::get_attachment_image_url( $atts['image'], 'about-section' );
		}

		return TBK_Render::shortcode_view( 'about-section', $atts );
	}
}
TBK_Shortcodes::instantiate();
function encode_array_for_sc( $array ) {
	return urlencode( serialize( $array ) );
}
function decode_array_for_sc( $array ) {
	return unserialize( urldecode( $array ) );
}

if ( class_exists( 'WPBakeryShortCodesContainer' ) ) {
	class TBKBakeryContainer extends WPBakeryShortCodesContainer {
		protected function content( $atts, $content = null, $view = null ) {
			extract( $atts );
			$output = false;
			if ( ! empty( $view ) ) {
				ob_start();
				include( locate_template( 'views/shortcodes/' . $view . '.php' ) );
				$output = ob_get_clean();
				$output = str_replace( '{content}', wpb_js_remove_wpautop( $content ), $output );
				//$output = $this->startRow( $el_position ) . $output . $this->endRow( $el_position );
			}
			return $output;
		}
	}
	/**
	 * Class WPBakeryShortCode_Basic_Container : A basic VC Container for containing things within
	 * a bootstrap .container.
	 */
	class WPBakeryShortCode_Basic_Container extends TBKBakeryContainer {
		protected function content( $atts = null, $content = null, $view = 'basic-container' ) {
			$atts = shortcode_atts( array(
				'classes' => null,
			), $atts );
			return parent::content( $atts, $content, $view );
		}
	}
	/**
	 * Class WPBakeryShortCode_Basic_Container_Narrow : A basic VC Container for containing things within
	 * a bootstrap .container but narrower.
	 */
	class WPBakeryShortCode_Basic_Container_Narrow extends TBKBakeryContainer {
		protected function content( $atts = null, $content = null, $view = 'basic-container-narrow' ) {
			$atts = shortcode_atts( array(
				'classes' => null,
			), $atts );
			return parent::content( $atts, $content, $view );
		}
	}
    
	class WPBakeryShortCode_Features_Container extends TBKBakeryContainer {
		protected function content( $atts = null, $content = null, $view = 'features-container' ) {
			$atts = shortcode_atts( array(
				'classes' => null,
				'heading' => null,
			), $atts );
			return parent::content( $atts, $content, $view );
		}
	}
	
	class WPBakeryShortCode_Product_Container extends TBKBakeryContainer {
		protected function content( $atts = null, $content = null, $view = 'product-container' ) {
			$atts = shortcode_atts( array(
				'classes' => null,
				'heading' => null,
			), $atts );
			return parent::content( $atts, $content, $view );
		}
	}
    
    class WPBakeryShortCode_WTB_Container extends TBKBakeryContainer {
		protected function content( $atts = null, $content = null, $view = 'wtb-container' ) {
			$atts = shortcode_atts( array(
                'image' => null,			
				'classes' => null,
				'heading' => null,
			), $atts );
            
            if( ! empty( $atts['image'] ) ) {
                $atts['image'] = TBK_Theme::get_attachment_image_url( $atts['image'], 'wtb-container' );
            }
            
			return parent::content( $atts, $content, $view );
		}
	}
}