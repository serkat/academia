<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Tester
 * @since 1.0
 * @version 1.0
 */
acf_form_head();

get_header(); ?>

<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

			<?php
			while ( have_posts() ) : the_post();

				//get_template_part( 'template-parts/page/content', 'page' );
            

    $options = array(
		'post_id'		=> 'new_post',
        'new_post'		=> array(
        'post_type'		=> 'test_results',
        'post_status'		=> 'publish'),
		'post_title'	=> true,
		'post_content'	=> false,
        'field_groups'  => array(267,285),
        'submit_value'       => ' ДОБАВИТЬ',
        'label_placement' => 'left',
		'updated_message' => 'Ваша запись поставлена в очередь на модерацию'
);
 
acf_form( $options );
        


				// If comments are open or we have at least one comment, load up the comment template.
				if ( comments_open() || get_comments_number() ) :
					comments_template();
				endif;

			endwhile; // End of the loop.
			?>

		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- .wrap -->

<?php get_footer();
