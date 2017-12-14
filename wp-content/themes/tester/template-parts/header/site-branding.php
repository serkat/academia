<?php
/**
 * Displays header site branding
 *
 * @package WordPress
 * @subpackage Tester
 * @since 1.0
 * @version 1.0
 */

?>
<div class="site-branding top-bar">
	<div class="wrap">
		<div class="row">
			<div class="col-md-4">
				<?php the_custom_logo(); ?>
			</div>
			<div class="col-md-5 centered">
				<div class="site-branding-text">
                    <div class="header-title"><?php bloginfo( 'name' ); ?></div>

					<?php
					$description = get_bloginfo( 'description', 'display' );

					if ( $description || is_customize_preview() ) :
					?>
						<div class="header-subtitle"><?php echo $description; ?></div>
					<?php endif; ?>
				</div><!-- .site-branding-text -->
			</div>
			<div class="col-md-2 offset-1">
				<div class="header-phone">
					<?php echo the_field('phone',15); ?>
				</div>
				<a href="mailto:<?php echo the_field('email',15); ?>" class="header-email">
					<?php echo the_field('email',15); ?>
				</a>
				<?php
					/**
					 * Call for the menu
					 */
					$current_user = get_current_user_id();

					$logout_link = wp_logout_url();
					if ($current_user) {
						$wrap  = '<ul class="nav logout-nav">';

						// get nav items as configured in /wp-admin/

						// the static link
						$wrap .= '<li><a href="';
						$wrap .= $logout_link;
						$wrap .= '">Выход</a></li>';

						// close the <ul>
						$wrap .= '</ul>';
						echo $wrap;
					}
					?>
			</div>
		</div>
		<?php if ( ( twentyseventeen_is_frontpage() || ( is_home() && is_front_page() ) ) && ! has_nav_menu( 'top' ) ) : ?>
		<a href="#content" class="menu-scroll-down"><?php echo twentyseventeen_get_svg( array( 'icon' => 'arrow-right' ) ); ?><span class="screen-reader-text"><?php _e( 'Scroll down to content', 'twentyseventeen' ); ?></span></a>
	<?php endif; ?>

	</div><!-- .wrap -->
</div><!-- .site-branding -->
