<?php
/**
 * The front page template file
 *
 * If the user has selected a static page for their homepage, this is what will
 * appear.
 * Learn more: https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Tester
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>

    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">
            <section class="head-image bg-lgray">
                <div class="wrap">

                    <div class="row justify-content-between">
                        <div class="col-md-6 col-lg-8  title-block">
                            <?php echo the_field('main_title'); ?>
                            <div class="amount">
                                <?php echo the_field('amount'); ?>
                            </div>
                            <div class="sessii">

                                <? $sessii=getSessii( );?>
                                    <span class="sessii_text">До окончания сеcсии «<?=$sessii->name;?>»</span>
                                    <div class="expiration_date">
                                        <?
                            date_default_timezone_set('Europe/Kaliningrad');
                            $today=new DateTime($sessii->to_date);
                            //echo $today->format('c')."<br>";
                            $now = new DateTime('NOW'); // текущее время на сервере
                            //echo $now->format('i').'<br>';
                            $date = DateTime::createFromFormat("Y-m-d H:i:s", $sessii->to_date); // задаем дату в любом формате
                            //echo  $date->format('c');
                            $interval = $now->diff($date); // получаем разницу в виде объекта DateInterval
                            
                            echo "<article><div class='date_number'>".date_diff(new DateTime(), new DateTime($sessii->to_date))->days."</div><div class='date_name'> Дней</div></article>:"; 
                            $hour=($interval->h<10)? "0$interval->h" : "$interval->h";
                            echo "<article><div class='date_number'>".$hour."</div><div class='date_name'> Часов</div></article>:"; // кол-во часов
                            $min=($interval->i<10)? "0$interval->i" : "$interval->i";
                            echo "<article><div class='date_number'>".$min."</div><div class='date_name'> Минут</div></article>"; // кол-во минут

                            //$d = new DateTime("2010-06-01");
                            //echo $d->diff( new DateTime("2010-05-17") )->format("%d");
                            
                            ?>
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 login-block">
                            <?php
                            //echo rcl_get_authorize_form('pageform');
                            //echo rcl_get_authorize_form('sign');    
                            //echo do_shortcode( "[loginform form='sign2']" ); 
                            get_template_part( 'loginform' );
                            ?>

                        </div>
                    </div>

                </div>
            </section>
            <section class="bg-lgray">
                <div class="wrap">
                    <div class="row">
                        <div class="onetest-block">
                            <div class="onetest-inner">
                                <div class="onetest-info">
                                    <p>Стоимость участия</p>
                                    <span>в любой олимпиаде за 1 тест</span>
                                </div>
                                <div class="onetest-price">
                                    <?php echo the_field('onetest'); ?>
                                    <span>руб.</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
            <section class="bg-circle">
                <div class="bg-circle bg-lgray">
                </div>
            </section>
            <section class="participation">
                <div class="wrap">
                    <?php

            $id = 76; // add the ID of the page where the zero is
            $p = get_page($id);
            $t = $p->post_title;
            echo '<h3 class="recents-title">'.apply_filters('post_title', $t).'</h3>'; // the title is here wrapped with h3
            echo apply_filters('the_content', $p->post_content);
            ?>
                </div>
            </section>

            <?php
    // Get each of our panels and show the post data.
    if ( 0 !== twentyseventeen_panel_count() || is_customize_preview() ) : // If we have pages to show.

        /**
         * Filter number of front page sections in Twenty Seventeen.
         *
         * @since Twenty Seventeen 1.0
         *
         * @param int $num_sections Number of front page sections.
         */
        $num_sections = apply_filters( 'twentyseventeen_front_page_sections', 4 );
        global $twentyseventeencounter;

        // Create a setting and control for each of the sections available in the theme.
        for ( $i = 1; $i < ( 1 + $num_sections ); $i++ ) {
            $twentyseventeencounter = $i;
            twentyseventeen_front_page_section( null, $i );
        }

    endif; // The if ( 0 !== twentyseventeen_panel_count() ) ends here. ?>
                <section class="bg-circle bg-lgray">
                    <div class="bg-circle bg-white">
                    </div>
                </section>
                <section class="all-russia bg-lgray">
                    <h3 class="recents-title">Работаем по всей России</h3>
                    <div class="wrap">
                        <div class="school-counter">
                            <p>более</p>
                            <p class="sch-counter">
                                <?php echo the_field('schools'); ?>
                            </p>
                            <p>учебных заведений</p>
                            <p>уже проводят</p>
                            <p>олимпиады с нами</p>
                        </div>
                    </div>
                </section>
                <section class="why-us bg-lgray">
                    <div class="wrap">
                        <?php

            $id = 99; // add the ID of the page where the zero is
            $p = get_page($id);
            $t = $p->post_title;
            echo '<h3 class="recents-title">'.apply_filters('post_title', $t).'</h3>'; // the title is here wrapped with h3
            echo apply_filters('the_content', $p->post_content);
            ?>
                    </div>
                </section>

        </main>
        <!-- #main -->
    </div>
    <!-- #primary -->

    <?php get_footer();