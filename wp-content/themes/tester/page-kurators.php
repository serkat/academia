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
 *
Template Name: Шаблон добавления куратора
 */


acf_form_head();
$cur_user_id = get_current_user_id();
echo $cur_user_id;
$home_url = home_url();

get_header(); ?>

    <div class="wrap">
        <div id="primary" class="content-area">
            <main id="main" class="site-main" role="main">

				<?php
				while ( have_posts() ) : the_post(); ?>

					<?php
					$options = array(
						'post_id'		=> 'new_post',
						'new_post'		=> array(
							'post_type'		=> 'kurators',
							'post_status'		=> 'publish'),
						'post_title'	=> false,
						'post_content'	=> false,
						'field_groups'  => array(381),
//						'fields'        => array(316),
						'submit_value'       => 'Добавить куратора',
						'label_placement' => 'left',
						'updated_message' => 'Куратор добавлен',
                        'return' => $home_url.'/account/?user='.$cur_user_id,
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
