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


Template Name: Шаблон скачивания

 */

get_header(); ?>
    <style>
        article.material {
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            border-bottom: 1px solid #ccc;
            padding: 9px 0;
            width: 50%;
            margin: auto;
        }
.text, .link {
    flex: 2;
}        
.text {
    text-align: left;
    padding-left: 20px;
}
    </style>
    <div class="wrap">
        <?php
            $args = array(
                   'post_type' => 'materials',
                   'publish' => true,
                   'paged' => get_query_var('paged'),
               );
            
            query_posts($args);
    
    if ( have_posts() ) : ?>
            <header class="page-header">
                <?php
		$title=get_field('title_page');
		
		if (!empty($title)){ echo '<h3 class="recents-title">'.$title.'</h3>';}
		?>
            </header>
            <!-- .page-header -->
            <?php endif; ?>

            <div id="primary" class="content-area">
                <main id="main" class="site-main" role="main">

                    <?php
		if ( have_posts() ) : ?>
                        <?php
			/* Start the Loop */
			while ( have_posts() ) : the_post();

				/*
				 * Include the Post-Format-specific template for the content.
				 * If you want to override this in a child theme, then include a file
				 * called content-___.php (where ___ is the Post Format name) and that will be used instead.*
			 
				get_template_part( 'template-parts/post/content', get_post_format() );
	*/
                    ?>
                            <article class="material">
                                <div class="text">
                                    <?php echo get_field('cust_class');?>
                                    <?php 
                                    $sub_title=get_field('cust_subject');
                                    //echo $sub_title[post_title];
                                    echo " $sub_title->post_title" ;
                                    
                                    $sub_sessia=get_field('cust_sessia');
                                    echo  " $sub_sessia->post_title";
                                    ?>
                                </div>
                                <div class="link">
                                    <a href="<?php echo the_field( 'cust_add_material' );?>" class="btn btn-primary" download><i class="fa fa-file-text" aria-hidden="true"></i>&nbsp;&nbsp; Скачать</a>
                            
                                </div>
                            </article>

                            <?		endwhile;

			the_posts_pagination( array(
				'prev_text' => twentyseventeen_get_svg( array( 'icon' => 'arrow-left' ) ) . '<span class="screen-reader-text">' . __( 'Previous page', 'twentyseventeen' ) . '</span>',
				'next_text' => '<span class="screen-reader-text">' . __( 'Next page', 'twentyseventeen' ) . '</span>' . twentyseventeen_get_svg( array( 'icon' => 'arrow-right' ) ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentyseventeen' ) . ' </span>',
			) );

		else :

			get_template_part( 'template-parts/post/content', 'none' );

		endif; ?>

                </main>
                <!-- #main -->
            </div>
            <!-- #primary -->
    </div>
    <!-- .wrap -->

    <?php get_footer();
