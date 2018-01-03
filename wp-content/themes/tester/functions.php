<?php
/**
 * Twenty Seventeen functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package WordPress
 * @subpackage Tester
 * @since 1.0
 */

/**
 * Twenty Seventeen only works in WordPress 4.7 or later.
 */
if ( version_compare( $GLOBALS['wp_version'], '4.7-alpha', '<' ) ) {
	require get_template_directory() . '/inc/back-compat.php';
	return;
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function twentyseventeen_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed at WordPress.org. See: https://translate.wordpress.org/projects/wp-themes/twentyseventeen
	 * If you're building a theme based on Twenty Seventeen, use a find and replace
	 * to change 'twentyseventeen' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'twentyseventeen' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	add_image_size( 'twentyseventeen-featured-image', 2000, 1200, true );

	add_image_size( 'twentyseventeen-thumbnail-avatar', 100, 100, true );

	// Set the default content width.
	$GLOBALS['content_width'] = 525;

	// This theme uses wp_nav_menu() in two locations.
	register_nav_menus( array(
		'top'    => __( 'Top Menu', 'twentyseventeen' ),
		'social' => __( 'Social Links Menu', 'twentyseventeen' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 *
	 * See: https://codex.wordpress.org/Post_Formats
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
		'gallery',
		'audio',
	) );

	// Add theme support for Custom Logo.
	add_theme_support( 'custom-logo', array(
		'width'       => 250,
		'height'      => 250,
		'flex-width'  => true,
	) );

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/*
	 * This theme styles the visual editor to resemble the theme style,
	 * specifically font, colors, and column width.
 	 */
	add_editor_style( array( 'assets/css/editor-style.css', twentyseventeen_fonts_url() ) );

	// Define and register starter content to showcase the theme on new sites.
	$starter_content = array(
		'widgets' => array(
			// Place three core-defined widgets in the sidebar area.
			'sidebar-1' => array(
				'text_business_info',
				'search',
				'text_about',
			),

			// Add the core-defined business info widget to the footer 1 area.
			'sidebar-2' => array(
				'text_business_info',
			),

			// Put two core-defined widgets in the footer 2 area.
			'sidebar-3' => array(
				'text_about',
				'search',
			),
		),

		// Specify the core-defined pages to create and add custom thumbnails to some of them.
		'posts' => array(
			'home',
			'about' => array(
				'thumbnail' => '{{image-sandwich}}',
			),
			'contact' => array(
				'thumbnail' => '{{image-espresso}}',
			),
			'blog' => array(
				'thumbnail' => '{{image-coffee}}',
			),
			'homepage-section' => array(
				'thumbnail' => '{{image-espresso}}',
			),
		),

		// Create the custom image attachments used as post thumbnails for pages.
		'attachments' => array(
			'image-espresso' => array(
				'post_title' => _x( 'Espresso', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/espresso.jpg', // URL relative to the template directory.
			),
			'image-sandwich' => array(
				'post_title' => _x( 'Sandwich', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/sandwich.jpg',
			),
			'image-coffee' => array(
				'post_title' => _x( 'Coffee', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/coffee.jpg',
			),
		),

		// Default to a static front page and assign the front and posts pages.
		'options' => array(
			'show_on_front' => 'page',
			'page_on_front' => '{{home}}',
			'page_for_posts' => '{{blog}}',
		),

		// Set the front page section theme mods to the IDs of the core-registered pages.
		'theme_mods' => array(
			'panel_1' => '{{homepage-section}}',
			'panel_2' => '{{about}}',
			'panel_3' => '{{blog}}',
			'panel_4' => '{{contact}}',
		),

		// Set up nav menus for each of the two areas registered in the theme.
		'nav_menus' => array(
			// Assign a menu to the "top" location.
			'top' => array(
				'name' => __( 'Top Menu', 'twentyseventeen' ),
				'items' => array(
					'link_home', // Note that the core "home" page is actually a link in case a static front page is not used.
					'page_about',
					'page_blog',
					'page_contact',
				),
			),

			// Assign a menu to the "social" location.
			'social' => array(
				'name' => __( 'Social Links Menu', 'twentyseventeen' ),
				'items' => array(
					'link_yelp',
					'link_facebook',
					'link_twitter',
					'link_instagram',
					'link_email',
				),
			),
		),
	);

	/**
	 * Filters Twenty Seventeen array of starter content.
	 *
	 * @since Twenty Seventeen 1.1
	 *
	 * @param array $starter_content Array of starter content.
	 */
	$starter_content = apply_filters( 'twentyseventeen_starter_content', $starter_content );

	add_theme_support( 'starter-content', $starter_content );
}
add_action( 'after_setup_theme', 'twentyseventeen_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function twentyseventeen_content_width() {

	$content_width = $GLOBALS['content_width'];

	// Get layout.
	$page_layout = get_theme_mod( 'page_layout' );

	// Check if layout is one column.
	if ( 'one-column' === $page_layout ) {
		if ( twentyseventeen_is_frontpage() ) {
			$content_width = 644;
		} elseif ( is_page() ) {
			$content_width = 740;
		}
	}

	// Check if is single post and there is no sidebar.
	if ( is_single() && ! is_active_sidebar( 'sidebar-1' ) ) {
		$content_width = 740;
	}

	/**
	 * Filter Twenty Seventeen content width of the theme.
	 *
	 * @since Twenty Seventeen 1.0
	 *
	 * @param int $content_width Content width in pixels.
	 */
	$GLOBALS['content_width'] = apply_filters( 'twentyseventeen_content_width', $content_width );
}
add_action( 'template_redirect', 'twentyseventeen_content_width', 0 );

/**
 * Register custom fonts.
 */
function twentyseventeen_fonts_url() {
	$fonts_url = '';

	/*
	 * Translators: If there are characters in your language that are not
	 * supported by Libre Franklin, translate this to 'off'. Do not translate
	 * into your own language.
	 */
	$libre_franklin = _x( 'on', 'Libre Franklin font: on or off', 'twentyseventeen' );

	if ( 'off' !== $libre_franklin ) {
		$font_families = array();

		$font_families[] = 'Libre Franklin:300,300i,400,400i,600,600i,800,800i';

		$query_args = array(
			'family' => urlencode( implode( '|', $font_families ) ),
			'subset' => urlencode( 'latin,latin-ext' ),
		);

		$fonts_url = add_query_arg( $query_args, 'https://fonts.googleapis.com/css' );
	}

	return esc_url_raw( $fonts_url );
}

/**
 * Add preconnect for Google Fonts.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param array  $urls           URLs to print for resource hints.
 * @param string $relation_type  The relation type the URLs are printed.
 * @return array $urls           URLs to print for resource hints.
 */
function twentyseventeen_resource_hints( $urls, $relation_type ) {
	if ( wp_style_is( 'twentyseventeen-fonts', 'queue' ) && 'preconnect' === $relation_type ) {
		$urls[] = array(
			'href' => 'https://fonts.gstatic.com',
			'crossorigin',
		);
	}

	return $urls;
}
add_filter( 'wp_resource_hints', 'twentyseventeen_resource_hints', 10, 2 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function twentyseventeen_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Blog Sidebar', 'twentyseventeen' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar on blog posts and archive pages.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 1', 'twentyseventeen' ),
		'id'            => 'sidebar-2',
		'description'   => __( 'Add widgets here to appear in your footer.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 2', 'twentyseventeen' ),
		'id'            => 'sidebar-3',
		'description'   => __( 'Add widgets here to appear in your footer.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'twentyseventeen_widgets_init' );

/**
 * Replaces "[...]" (appended to automatically generated excerpts) with ... and
 * a 'Continue reading' link.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $link Link to single post/page.
 * @return string 'Continue reading' link prepended with an ellipsis.
 */
function twentyseventeen_excerpt_more( $link ) {
	if ( is_admin() ) {
		return $link;
	}

	$link = sprintf( '<p class="link-more"><a href="%1$s" class="more-link">%2$s</a></p>',
		esc_url( get_permalink( get_the_ID() ) ),
		/* translators: %s: Name of current post */
		sprintf( __( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'twentyseventeen' ), get_the_title( get_the_ID() ) )
	);
	return ' &hellip; ' . $link;
}
add_filter( 'excerpt_more', 'twentyseventeen_excerpt_more' );

/**
 * Handles JavaScript detection.
 *
 * Adds a `js` class to the root `<html>` element when JavaScript is detected.
 *
 * @since Twenty Seventeen 1.0
 */
function twentyseventeen_javascript_detection() {
	echo "<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>\n";
}
add_action( 'wp_head', 'twentyseventeen_javascript_detection', 0 );

/**
 * Add a pingback url auto-discovery header for singularly identifiable articles.
 */
function twentyseventeen_pingback_header() {
	if ( is_singular() && pings_open() ) {
		printf( '<link rel="pingback" href="%s">' . "\n", get_bloginfo( 'pingback_url' ) );
	}
}
add_action( 'wp_head', 'twentyseventeen_pingback_header' );

/**
 * Display custom color CSS.
 */
function twentyseventeen_colors_css_wrap() {
	if ( 'custom' !== get_theme_mod( 'colorscheme' ) && ! is_customize_preview() ) {
		return;
	}

	require_once( get_parent_theme_file_path( '/inc/color-patterns.php' ) );
	$hue = absint( get_theme_mod( 'colorscheme_hue', 250 ) );
?>
	<style type="text/css" id="custom-theme-colors" <?php if ( is_customize_preview() ) { echo 'data-hue="' . $hue . '"'; } ?>>
		<?php echo twentyseventeen_custom_colors_css(); ?>
	</style>
<?php }
add_action( 'wp_head', 'twentyseventeen_colors_css_wrap' );

/**
 * Enqueue scripts and styles.
 */
function twentyseventeen_scripts() {
	// Add custom fonts, used in the main stylesheet.
	wp_enqueue_style( 'twentyseventeen-fonts', twentyseventeen_fonts_url(), array(), null );

	// Theme stylesheet.
	wp_enqueue_style( 'twentyseventeen-style', get_stylesheet_uri() );

	// Load the dark colorscheme.
	if ( 'dark' === get_theme_mod( 'colorscheme', 'light' ) || is_customize_preview() ) {
		wp_enqueue_style( 'twentyseventeen-colors-dark', get_theme_file_uri( '/assets/css/colors-dark.css' ), array( 'twentyseventeen-style' ), '1.0' );
	}

	// Load the Internet Explorer 9 specific stylesheet, to fix display issues in the Customizer.
	if ( is_customize_preview() ) {
		wp_enqueue_style( 'twentyseventeen-ie9', get_theme_file_uri( '/assets/css/ie9.css' ), array( 'twentyseventeen-style' ), '1.0' );
		wp_style_add_data( 'twentyseventeen-ie9', 'conditional', 'IE 9' );
	}

	// Load the Internet Explorer 8 specific stylesheet.
	wp_enqueue_style( 'twentyseventeen-ie8', get_theme_file_uri( '/assets/css/ie8.css' ), array( 'twentyseventeen-style' ), '1.0' );
	wp_style_add_data( 'twentyseventeen-ie8', 'conditional', 'lt IE 9' );

	// Load the html5 shiv.
	wp_enqueue_script( 'html5', get_theme_file_uri( '/assets/js/html5.js' ), array(), '3.7.3' );
	wp_script_add_data( 'html5', 'conditional', 'lt IE 9' );

	wp_enqueue_script( 'twentyseventeen-skip-link-focus-fix', get_theme_file_uri( '/assets/js/skip-link-focus-fix.js' ), array(), '1.0', true );

	$twentyseventeen_l10n = array(
		'quote'          => twentyseventeen_get_svg( array( 'icon' => 'quote-right' ) ),
	);

	if ( has_nav_menu( 'top' ) ) {
		wp_enqueue_script( 'twentyseventeen-navigation', get_theme_file_uri( '/assets/js/navigation.js' ), array( 'jquery' ), '1.0', true );
		$twentyseventeen_l10n['expand']         = __( 'Expand child menu', 'twentyseventeen' );
		$twentyseventeen_l10n['collapse']       = __( 'Collapse child menu', 'twentyseventeen' );
		$twentyseventeen_l10n['icon']           = twentyseventeen_get_svg( array( 'icon' => 'angle-down', 'fallback' => true ) );
	}

	wp_enqueue_script( 'twentyseventeen-global', get_theme_file_uri( '/assets/js/global.js' ), array( 'jquery' ), '1.0', true );

	wp_enqueue_script( 'jquery-scrollto', get_theme_file_uri( '/assets/js/jquery.scrollTo.js' ), array( 'jquery' ), '2.1.2', true );

	wp_localize_script( 'twentyseventeen-skip-link-focus-fix', 'twentyseventeenScreenReaderText', $twentyseventeen_l10n );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'twentyseventeen_scripts' );

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for content images.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $sizes A source size value for use in a 'sizes' attribute.
 * @param array  $size  Image size. Accepts an array of width and height
 *                      values in pixels (in that order).
 * @return string A source size value for use in a content image 'sizes' attribute.
 */
function twentyseventeen_content_image_sizes_attr( $sizes, $size ) {
	$width = $size[0];

	if ( 740 <= $width ) {
		$sizes = '(max-width: 706px) 89vw, (max-width: 767px) 82vw, 740px';
	}

	if ( is_active_sidebar( 'sidebar-1' ) || is_archive() || is_search() || is_home() || is_page() ) {
		if ( ! ( is_page() && 'one-column' === get_theme_mod( 'page_options' ) ) && 767 <= $width ) {
			 $sizes = '(max-width: 767px) 89vw, (max-width: 1000px) 54vw, (max-width: 1071px) 543px, 580px';
		}
	}

	return $sizes;
}
add_filter( 'wp_calculate_image_sizes', 'twentyseventeen_content_image_sizes_attr', 10, 2 );

/**
 * Filter the `sizes` value in the header image markup.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $html   The HTML image tag markup being filtered.
 * @param object $header The custom header object returned by 'get_custom_header()'.
 * @param array  $attr   Array of the attributes for the image tag.
 * @return string The filtered header image HTML.
 */
function twentyseventeen_header_image_tag( $html, $header, $attr ) {
	if ( isset( $attr['sizes'] ) ) {
		$html = str_replace( $attr['sizes'], '100vw', $html );
	}
	return $html;
}
add_filter( 'get_header_image_tag', 'twentyseventeen_header_image_tag', 10, 3 );

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for post thumbnails.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param array $attr       Attributes for the image markup.
 * @param int   $attachment Image attachment ID.
 * @param array $size       Registered image size or flat array of height and width dimensions.
 * @return array The filtered attributes for the image markup.
 */
function twentyseventeen_post_thumbnail_sizes_attr( $attr, $attachment, $size ) {
	if ( is_archive() || is_search() || is_home() ) {
		$attr['sizes'] = '(max-width: 767px) 89vw, (max-width: 1000px) 54vw, (max-width: 1071px) 543px, 580px';
	} else {
		$attr['sizes'] = '100vw';
	}

	return $attr;
}
add_filter( 'wp_get_attachment_image_attributes', 'twentyseventeen_post_thumbnail_sizes_attr', 10, 3 );

/**
 * Use front-page.php when Front page displays is set to a static page.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $template front-page.php.
 *
 * @return string The template to be used: blank if is_home() is true (defaults to index.php), else $template.
 */
function twentyseventeen_front_page_template( $template ) {
	return is_home() ? '' : $template;
}
add_filter( 'frontpage_template',  'twentyseventeen_front_page_template' );

/**
 * Modifies tag cloud widget arguments to display all tags in the same font size
 * and use list format for better accessibility.
 *
 * @since Twenty Seventeen 1.4
 *
 * @param array $args Arguments for tag cloud widget.
 * @return array The filtered arguments for tag cloud widget.
 */
function twentyseventeen_widget_tag_cloud_args( $args ) {
	$args['largest']  = 1;
	$args['smallest'] = 1;
	$args['unit']     = 'em';
	$args['format']   = 'list';

	return $args;
}
add_filter( 'widget_tag_cloud_args', 'twentyseventeen_widget_tag_cloud_args' );

/**
 * Implement the Custom Header feature.
 */
require get_parent_theme_file_path( '/inc/custom-header.php' );

/**
 * Custom template tags for this theme.
 */
require get_parent_theme_file_path( '/inc/template-tags.php' );

/**
 * Additional features to allow styling of the templates.
 */
require get_parent_theme_file_path( '/inc/template-functions.php' );

/**
 * Customizer additions.
 */
require get_parent_theme_file_path( '/inc/customizer.php' );

/**
 * SVG icons functions and filters.
 */
require get_parent_theme_file_path( '/inc/icon-functions.php' );


function getSessii( ) {
    global $wpdb; 
    $wpdb->sessii = "{$wpdb->prefix}sessii"; 
    // $posts = $wpdb->get_results("SELECT * FROM $wpdb->sessii");
        $today=date("Y-m-d H:i:s");
        $sessii = $wpdb->get_row("SELECT name, to_date FROM $wpdb->sessii  WHERE '".$today."' BETWEEN `from_date` AND `to_date`"
    );
    return $sessii;
    
}

function getTest( ) {
    $testtin = "Привет я тестовая фунция";
    return $testtin;
    
}

add_action('acf/save_post', 'my_save_post');

function my_pre_save_post( $post_id ) {
	$cur_user_id = get_current_user_id();
	//var_dump($cur_user_id);
	//var_dump($post_id);
	$input_post_type = $post_id;
    // check if this is to be a new post and create new title
	if( $post_id == 'kurator' ) {
		$nw_title = $_POST[acf][field_5a4189ab2aa12]." ".$_POST[acf][field_5a4188eb2aa11]." ".$_POST[acf][field_5a4189fb2aa13];

		$post = array(
			'post_status'  => 'publish' ,
			'post_title'  => $nw_title ,
			'post_type'  => 'kurators' ,
		);

	} elseif ($post_id == 'new_test') {
		$nw_title = $_POST[acf][field_5a3d11b912cb0]." ".$_POST[acf][field_5a3d11f912cb1]." ".$_POST[acf][field_5a40d0d4bd545]." Класс ".get_the_title($_POST[acf][field_5a4213ecb8c5e])." ".get_the_title($_POST[acf][field_5a3d2898227f8]);
		$post = array(
			'post_status'  => 'draft' ,
			'post_title'  => $nw_title ,
			'post_type'  => 'test_results' ,
		);
	}  elseif ($post_id == 'bid') {
		$post = array(
			'post_status'  => 'publish' ,
//			'post_title'  => $nw_title ,
			'post_type'  => 'bids' ,
		);
	} elseif( $post_id != 'new_test' ) {
		return $post_id;
    }

<<<<<<< HEAD
    // insert the post
    $post_id = wp_insert_post( $post );

//
//	// update who create kurator
	if( $input_post_type == 'bid' ) {
	    $bid_post = get_post($post_id);
		$my_post = array();
		$my_post['ID'] = $post_id;
		$my_post['post_title'] = "Заявка №".$post_id;
		wp_update_post( wp_slash($my_post) );
    // echo '<pre>';
	// var_dump($post_id);
	// echo '</pre>';
	// echo '<pre>';
	update_post_meta( $post_id, 'bid_id', 'Steve123' );
	// var_dump($bid_post);die();
	// echo '</pre>';
	    }

//		// save a basic text value
//		$field_key = "field_5a418ac818e72";
//		$value     = $cur_user_id;
//		update_field( $field_key, $value, $post_id );
//	}
=======
    // Create a new post
    $post = array(
        'post_status'  => 'draft' ,
        'post_title'  => 'А может быть $_POST переменны' ,
        'post_type'  => 'test_results' ,
    );

    // insert the post
    $post_id = wp_insert_post( $post );

>>>>>>> 8f22222a1e41bfd846baa0dccc36be3835a3b428
    // return the new ID
    return $post_id;

}

<<<<<<< HEAD
add_filter('acf/pre_save_post' , 'my_pre_save_post', 10, 1 );




$klass = $_GET['klass'];
add_filter('acf/load_field/name=klass',
     function($field) use ($klass) {           
	     $field['default_value'] = $klass;
	     return $field;
     }
);
$sid = $_GET['sid'];
add_filter('acf/load_field/name=sessia',
     function($field) use ($sid) {           
	     $field['default_value'] = $sid;
	     return $field;
     }
);
$curid = $_GET['curid'];
add_filter('acf/load_field/name=curator',
     function($field) use ($curid) {           
	     $field['default_value'] = $curid;
	     return $field;
     }
);
$bidid = $_GET['bidid'];
add_filter('acf/load_field/name=number_bids',
     function($field) use ($bidid) {           
	     $field['default_value'] = $bidid;
	     return $field;
     }
);
$subid = $_GET['subid'];
add_filter('acf/load_field/name=predmet2',
     function($field) use ($subid) {           
	     $field['default_value'] = $subid;
	     return $field;
     }
);

/* Дополнительные сортируемые колонки для постов CPT Результаты в админке 
------------------------------------------------------------------------ */
// создаем новую колонку
add_filter('manage_test_results_posts_columns', 'add_sessia_column', 4);
function add_sessia_column( $columns ){
	// удаляем колонку Автор
	//unset($columns['author']);
	//unset($columns['date']);

	// вставляем в нужное место - 3 - 3-я колонка
	$out = array();
	foreach($columns as $col=>$name){
		if(++$i==3){
            $out['number_bids'] = 'Номер заявки';
			$out['sessia'] = 'Сессия';
			$out['curator'] = 'Куратор';
			$out['predmet2'] = 'Предмет';
			$out['klass'] = 'Класс';
        }

		$out[$col] = $name;
	}

	return $out;
}
// заполняем колонку данными -  wp-admin/includes/class-wp-posts-list-table.php
add_filter('manage_test_results_posts_custom_column', 'fill_sessia_column', 5, 2);
function fill_sessia_column( $colname, $post_id ){
	if( $colname === 'sessia' ){
        echo get_the_title(get_post_meta($post_id, 'sessia', 1));
		//echo get_post_meta($post_id, 'sessia', 1);
	}
    if( $colname === 'number_bids' ){
        
		echo get_the_title(get_post_meta($post_id, 'number_bids', 1));
		//echo get_post_meta($post_id, 'number_bids', 1);
	}
    if( $colname === 'curator' ){
        
		echo get_the_title(get_post_meta($post_id, 'curator', 1));
		//echo get_post_meta($post_id, 'number_bids', 1);
	}
    if( $colname === 'predmet2' ){
        
		echo get_the_title(get_post_meta($post_id, 'predmet2', 1));
		//echo get_post_meta($post_id, 'predmet2', 1);
    }
    if( $colname === 'klass' ){
        
		//echo get_the_title(get_post_meta($post_id, 'klass', 1));
		echo get_post_meta($post_id, 'klass', 1)." Класс";
	}
}

// подправим ширину колонки через css
add_action('admin_head', 'add_sessia_column_css');
function add_sessia_column_css(){
	if( get_current_screen()->base == 'edit')
		echo '
        <style type="text/css">.column-sessia{width:10%;}</style>
        <style type="text/css">.column-number_bids{width:10%;}</style>
        <style type="text/css">.column-curator{width:10%;}</style>
        <style type="text/css">.column-predmet2{width:10%;}</style>
        <style type="text/css">.column-klass{width:10%;}</style>
        
        ';
}

// добавляем возможность сортировать колонку
add_filter('manage_edit-test_results_sortable_columns', 'add_sessia_sortable_column');
function add_sessia_sortable_column($sortable_columns){
	$sortable_columns['sessia'] = 'sessia_sessia';
	$sortable_columns['number_bids'] = 'number_bids_number_bids';
	$sortable_columns['curator'] = 'curator_curator';
	$sortable_columns['predmet2'] = 'predmet2_predmet2';

	return $sortable_columns;
}

// изменяем запрос при сортировке колонки
add_filter('pre_get_posts', 'add_column_sessia_request');
function add_column_sessia_request( $object ){
	if( $object->get('orderby') != 'sessia_sessia' )
		return;

	$object->set('meta_key', 'sessia');
	$object->set('orderby', 'meta_value_num');
}
=======
add_filter('acf/pre_save_post' , 'create_title_test_results_save_post', 10, 1 );

//function create_title_kurators_save_post( $post_ids ) {
//
//    // check if this is to be a new post
//    if( $post_ids != 'new_post' ) {
//
//        return $post_id;
//
//    }
//
//    // Create a new post
//    $post = array(
////        'post_status'  => 'draft' ,
//        'post_title'  => 'А может быть $_POST переменны' ,
//        'post_type'  => 'kurators' ,
//    );
//
//    // insert the post
//    $post_ids = wp_insert_post( $post );
//
//    // return the new ID
//    return $post_ids;
//
//}
//
//add_filter('acf/pre_save_post' , 'create_title_kurators_save_post', 10, 1 );

function my_acf_prepare_field( $field ) {
	global $wpdb;
	$wpdb->sessii = "{$wpdb->prefix}sessii";
	$sessii = $wpdb->get_results("SELECT uniq_number FROM $wpdb->sessii WHERE state=1");
	$sessii_id = $sessii[0]->uniq_number;
	var_dump($sessii_id);
	if( $field['value'] ) {

		$field['disabled'] = true;

	}

	return $field;

}


// all
// add_filter('acf/prepare_field', 'my_acf_prepare_field');

// type
// add_filter('acf/prepare_field/type=text', 'my_acf_prepare_field');

// key
// add_filter('acf/prepare_field/key=field_508a263b40457', 'my_acf_prepare_field');

// name
add_filter('acf/prepare_field/name=hidden_field', 'my_acf_prepare_field');


function bid_title_acf_prepare_field( $field ) {
	$field['value'] = "some title";
	var_dump($field['value']);
	return $field;

}

add_filter('acf/prepare_field/name=bid_title', 'bid_title_acf_prepare_field');

function who_add_kurator_acf_prepare_field( $field ) {
	$cur_user_id = get_current_user_id();
	echo $cur_user_id;
	$field['value']=$cur_user_id;
    return $field;

}

add_filter('acf/prepare_field/name=who_add', 'who_add_kurator_acf_prepare_field');

//Auto add and update Title field:
//function my_post_title_updater( $post_id ) {
//
//	$my_post = array();
//	$my_post['ID'] = $post_id;
//
//	$name           = get_field('kur_firstname');
//	$lastname         = get_field('kur_lastname');
//	$middlename         = get_field('kur_middlename');
//
//	$my_post['post_title'] = $lastname . ' ' .$name . ' ' . $middlename;
//	var_dump($my_post['post_title']);
//	if ( get_post_type() == 'kurators' ) {
//		$my_post['post_title'] = $lastname . ' ' .$name . ' ' . $middlename;
//	} /*elseif ( get_post_type() == 'products' ) {
//		$my_post['post_title'] = get_field('kitName') . ' (' . get_field('manufacturer_name', $manufacturer->ID) . ' ' . get_field('kitNumber') . ')';
//	} elseif ( get_post_type() == 'reviews' ) {
//		$my_post['post_title'] = get_field('kitName', $review_target_product) . ' (' . get_field('manufacturer_name', $manufacturer_target) . ' ' . get_field('kitNumber', $review_target_product) . ')';
//	}*/
//
//	// Update the post into the database
//	wp_update_post( $my_post );
//
//}
//
//// run after ACF saves the $_POST['fields'] data
//add_action('acf/save_post', 'my_post_title_updater', 20);
>>>>>>> 8f22222a1e41bfd846baa0dccc36be3835a3b428
