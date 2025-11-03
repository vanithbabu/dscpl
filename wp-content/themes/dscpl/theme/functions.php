<?php
/**
 * dscpl functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package dscpl
 */

if ( ! defined( 'DSCPL_VERSION' ) ) {
	/*
	 * Set the theme’s version number.
	 *
	 * This is used primarily for cache busting. If you use `npm run bundle`
	 * to create your production build, the value below will be replaced in the
	 * generated zip file with a timestamp, converted to base 36.
	 */
	define( 'DSCPL_VERSION', '0.1.0' );
}

if ( ! defined( 'DSCPL_TYPOGRAPHY_CLASSES' ) ) {
	/*
	 * Set Tailwind Typography classes for the front end, block editor and
	 * classic editor using the constant below.
	 *
	 * For the front end, these classes are added by the `dscpl_content_class`
	 * function. You will see that function used everywhere an `entry-content`
	 * or `page-content` class has been added to a wrapper element.
	 *
	 * For the block editor, these classes are converted to a JavaScript array
	 * and then used by the `./javascript/block-editor.js` file, which adds
	 * them to the appropriate elements in the block editor (and adds them
	 * again when they’re removed.)
	 *
	 * For the classic editor (and anything using TinyMCE, like Advanced Custom
	 * Fields), these classes are added to TinyMCE’s body class when it
	 * initializes.
	 */
	define(
		'DSCPL_TYPOGRAPHY_CLASSES',
		'prose prose-neutral max-w-none prose-a:text-primary'
	);
}

if ( ! function_exists( 'dscpl_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function dscpl_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on dscpl, use a find and replace
		 * to change 'dscpl' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'dscpl', get_template_directory() . '/languages' );

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

		// This theme uses wp_nav_menu() in two locations.
		register_nav_menus(
			array(
				'desktop_menu' => __( 'Desktop Menu', 'dscpl' ),
				'mobile_menu' => __( 'Footer Menu', 'dscpl' ),
			)
		);

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support(
			'html5',
			array(
				'search-form',
				'comment-form',
				'comment-list',
				'gallery',
				'caption',
				'style',
				'script',
			)
		);

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		// Add support for editor styles.
		add_theme_support( 'editor-styles' );

		// Enqueue editor styles.
		add_editor_style( 'style-editor.css' );
		add_editor_style( 'style-editor-extra.css' );

		// Add support for responsive embedded content.
		add_theme_support( 'responsive-embeds' );

		// Remove support for block templates.
		remove_theme_support( 'block-templates' );
	}
endif;
add_action( 'after_setup_theme', 'dscpl_setup' );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function dscpl_widgets_init() {
	register_sidebar(
		array(
			'name'          => __( 'Footer', 'dscpl' ),
			'id'            => 'sidebar-1',
			'description'   => __( 'Add widgets here to appear in your footer.', 'dscpl' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'dscpl_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function dscpl_scripts() {
	wp_enqueue_style( 'dscpl-style', get_stylesheet_uri(), array(), DSCPL_VERSION );
	wp_enqueue_script( 'dscpl-script', get_template_directory_uri() . '/js/script.min.js', array(), DSCPL_VERSION, true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'dscpl_scripts' );

/**
 * Enqueue the block editor script.
 */
function dscpl_enqueue_block_editor_script() {
	$current_screen = function_exists( 'get_current_screen' ) ? get_current_screen() : null;

	if (
		$current_screen &&
		$current_screen->is_block_editor() &&
		'widgets' !== $current_screen->id
	) {
		wp_enqueue_script(
			'dscpl-editor',
			get_template_directory_uri() . '/js/block-editor.min.js',
			array(
				'wp-blocks',
				'wp-edit-post',
			),
			DSCPL_VERSION,
			true
		);
		wp_add_inline_script( 'dscpl-editor', "tailwindTypographyClasses = '" . esc_attr( DSCPL_TYPOGRAPHY_CLASSES ) . "'.split(' ');", 'before' );
	}
}
add_action( 'enqueue_block_assets', 'dscpl_enqueue_block_editor_script' );

/**
 * Add the Tailwind Typography classes to TinyMCE.
 *
 * @param array $settings TinyMCE settings.
 * @return array
 */
function dscpl_tinymce_add_class( $settings ) {
	$settings['body_class'] = DSCPL_TYPOGRAPHY_CLASSES;
	return $settings;
}
add_filter( 'tiny_mce_before_init', 'dscpl_tinymce_add_class' );

/**
 * Limit the block editor to heading levels supported by Tailwind Typography.
 *
 * @param array  $args Array of arguments for registering a block type.
 * @param string $block_type Block type name including namespace.
 * @return array
 */
function dscpl_modify_heading_levels( $args, $block_type ) {
	if ( 'core/heading' !== $block_type ) {
		return $args;
	}

	// Remove <h1>, <h5> and <h6>.
	$args['attributes']['levelOptions']['default'] = array( 2, 3, 4 );

	return $args;
}
add_filter( 'register_block_type_args', 'dscpl_modify_heading_levels', 10, 2 );

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';


function allow_svg_uploads($mimes) {
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
}
add_filter('upload_mimes', 'allow_svg_uploads');


class DSCPL_Tailwind_Walker extends Walker_Nav_Menu {

  // Start submenu container
  function start_lvl( &$output, $depth = 0, $args = null ) {
    $indent = str_repeat("\t", $depth);
    $output .= "\n$indent<div class='dropdown-menu absolute hidden right-0 z-20 mt-1 w-64 bg-white shadow-xl rounded-lg border border-gray-100 dropdown-triangle' style='min-width:250px;'>\n";
  }

  // End submenu
  function end_lvl( &$output, $depth = 0, $args = null ) {
    $indent = str_repeat("\t", $depth);
    $output .= "$indent</div>\n";
  }

  // Start each menu item
  function start_el( &$output, $item, $depth = 0, $args = null, $id = 0 ) {
    $indent = ($depth) ? str_repeat("\t", $depth) : '';

    // Collect classes from WordPress backend
    $classes = empty( $item->classes ) ? [] : (array) $item->classes;
    $is_parent = in_array( 'menu-item-has-children', $classes );

    // Remove WordPress defaults that clutter class output
    $filtered_classes = array_diff( $classes, ['menu-item', 'menu-item-type-post_type', 'menu-item-object-page', 'current-menu-item'] );
    $class_attr = !empty( $filtered_classes ) ? ' ' . esc_attr( implode( ' ', $filtered_classes ) ) : '';

    // Dropdown parent (level 0)
    if ( $depth === 0 && $is_parent ) {
      $output .= '<div class="relative dropdown-group">';
      $output .= '<button class="dropdown-btn hover:text-primary-blue flex items-center focus:outline-none">'
                . esc_html( $item->title )
                . '<svg class="dropdown-arrow w-4 h-4 ml-1 mt-1 transition-transform duration-300" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"/></svg></button>';
    }

    // Top-level link without children
    elseif ( $depth === 0 ) {
      $output .= '<a href="' . esc_url( $item->url ) . '" class="hover:text-primary-blue' . $class_attr . '">' . esc_html( $item->title ) . '</a>';
    }

    // Submenu link
    else {
      $output .= '<a href="' . esc_url( $item->url ) . '" class="block px-4 py-3 text-sm text-primary-dark hover:bg-gray-50 font-semibold border-b border-[#c0b9b9]' . $class_attr . '">' . esc_html( $item->title ) . '</a>';
    }
  }

  // End each menu item
  function end_el( &$output, $item, $depth = 0, $args = null ) {
    $classes = empty( $item->classes ) ? [] : (array) $item->classes;
    $is_parent = in_array( 'menu-item-has-children', $classes );

    if ( $depth === 0 && $is_parent ) {
      $output .= '</div>'; // close dropdown-group
    }
  }
}



class DSCPL_Tailwind_Mobile_Walker extends Walker_Nav_Menu {

  // Start submenu
  function start_lvl(&$output, $depth = 0, $args = null) {
    $indent = str_repeat("\t", $depth);
    $output .= "\n$indent<div class='pl-4 space-y-2 hidden mobile-submenu'>\n";
  }

  // End submenu
  function end_lvl(&$output, $depth = 0, $args = null) {
    $indent = str_repeat("\t", $depth);
    $output .= "$indent</div>\n";
  }

  // Start each menu item
  function start_el(&$output, $item, $depth = 0, $args = null, $id = 0) {
    $classes = empty($item->classes) ? [] : (array) $item->classes;
    $is_parent = in_array('menu-item-has-children', $classes);
    $indent = ($depth) ? str_repeat("\t", $depth) : '';

    $output .= $indent . '<div class="mobile-menu-item">';

    if ($is_parent) {
      $output .= '<button class="flex items-center justify-between w-full py-2 text-left hover:text-primary-blue mobile-dropdown-btn">'
        . esc_html($item->title)
        . '<svg class="w-4 h-4 transition-transform duration-300 transform mobile-dropdown-arrow" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"/></svg></button>';
    } else {
      $output .= '<a href="' . esc_url($item->url) . '" class="block py-2 hover:text-primary-blue">'
        . esc_html($item->title)
        . '</a>';
    }
  }

  // End menu item
  function end_el(&$output, $item, $depth = 0, $args = null) {
    $output .= "</div>\n";
  }
}


function enqueue_contact_form_scripts() {
    wp_enqueue_script('jquery');
    wp_enqueue_script('jquery-validate', 'https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js', array('jquery'), null, true);
    
    wp_enqueue_script('contact-form-js', get_template_directory_uri() . '/js/contact-form.js', array('jquery', 'jquery-validate'), null, true);
    
    wp_localize_script('contact-form-js', 'contactFormAjax', array(
        'ajaxurl' => admin_url('admin-ajax.php'),
        'nonce'   => wp_create_nonce('contact_form_nonce')
    ));
}
add_action('wp_enqueue_scripts', 'enqueue_contact_form_scripts');


function handle_contact_form_submission() {
    check_ajax_referer('contact_form_nonce', 'nonce');
    parse_str($_POST['data'], $formData);

    global $wpdb;
    $table = $wpdb->prefix . 'contact_form_entries';
    $wpdb->insert($table, [
        'name'    => sanitize_text_field($formData['name']),
        'email'   => sanitize_email($formData['email']),
        'company' => sanitize_text_field($formData['company']),
        'message' => sanitize_textarea_field($formData['message']),
        'created_at' => current_time('mysql')
    ]);

    // Load the template
    $template_path = get_template_directory() . '/email-template.php';
    $email_html = file_get_contents($template_path);

    // Replace placeholders
    $email_html = str_replace(
        ['{{name}}', '{{email}}', '{{company}}', '{{message}}', '{{site_url}}'],
        [
            esc_html($formData['name']),
            esc_html($formData['email']),
            esc_html($formData['company']),
            nl2br(esc_html($formData['message'])),
            site_url()
        ],
        $email_html
    );

    // Send Email
    $admin_email = get_option('admin_email');
    $subject = '📩 New Contact Form Submission';
    $headers = ['Content-Type: text/html; charset=UTF-8'];

    wp_mail($admin_email, $subject, $email_html, $headers);

    wp_send_json_success();
}

add_action('wp_ajax_submit_contact_form', 'handle_contact_form_submission');
add_action('wp_ajax_nopriv_submit_contact_form', 'handle_contact_form_submission');





