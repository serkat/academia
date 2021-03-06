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
$cur_user_id = get_current_user_id();
//echo $cur_user_id;
$home_url = home_url();
$r_param = 'sid='.$sid.'&curid='.$curid.'&bidid='.$bidid.'&subid='.$subid.'&klass='.$klass;
$title=get_field('title_page');

get_header(); ?>
    <style>
        .mtop_60 {
            margin-top: 60px;
        }

        .input-row {
            display: flex;
            justify-content: center;
        }

        .label {
            flex: 2;
            text-align: right;
        }

        .info {
            flex: 1;
        }

        .input-info {
            margin: 30px 0;
        }


        .hidden_front{
            display: none;
        }
    </style>
    <?php
if ( is_user_logged_in() ) {  ?>
        <div class="wrap">
            <div id="primary" class="content-area">
                <main id="main" class="site-main" role="main">
                    <div class="alert alert-warning" role="alert">
                        Убедитесь в верности данных ! Если данные не верны перейдите заного по ссылке "Загрузить".
                    </div>
                    <?            if (!empty($title)){ echo '<h3 class="recents-title">'.$title.'</h3>';}
?>
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="input-info">
                                    <div class="input-row">
                                        <div class="label">Заявка:&nbsp;</div>
                                        <div class="info">
                                            <?=get_the_title($bidid);?>
                                        </div>
                                    </div>
                                    <div class="input-row">
                                        <div class="label">Куратор:&nbsp;</div>
                                        <div class="info">
                                            <?=get_the_title($curid);?>
                                        </div>
                                    </div>
                                    <div class="input-row">
                                        <div class="label">Класс:&nbsp;</div>
                                        <div class="info">
                                            <?=$klass." Класс";?>
                                        </div>
                                    </div>
                                    <div class="input-row">
                                        <div class="label">Предмет:&nbsp;</div>
                                        <div class="info">
                                            <?=get_the_title($subid);?>
                                        </div>
                                    </div>
                                    <div class="input-row">
                                        <div class="label">Сессия:&nbsp;</div>
                                        <div class="info">
                                            <?=get_the_title($sid);?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="row">
                                    <div class="col-sm-6">
                                        оплачено<br> 20
                                    </div>
                                    <div class="col-sm-6">
                                        Введено<br> 20
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
			while ( have_posts() ) : the_post(); 
            

                if (empty($_GET['edit'])){
                    get_template_part( 'template-parts/page/results', 'add-new' ); 
                }else{
                    get_template_part( 'template-parts/page/results', 'edit' ); 
                }
    
           

                // If comments are open or we have at least one comment, load up the comment template.
				if ( comments_open() || get_comments_number() ) :
					comments_template();
				endif;

			endwhile; // End of the loop.
			?>



                </main>
                <!-- #main -->
            </div>
            <!-- #primary -->
        </div>
        <!-- .wrap -->
        <div class="wrap mtop_60">
            <table>
                <tbody>
                    <tr class="theader">
                        <th>Участник</th>
                        <th>Предмет</th>
                        <th>Класс</th>
                        <th>1</th>
                        <th>2</th>
                        <th>3</th>
                        <th>4</th>
                        <th>5</th>
                        <th>6</th>
                        <th>7</th>
                        <th>8</th>
                        <th>9</th>
                        <th>10</th>
                        <th>11</th>
                        <th>12</th>
                        <th>13</th>
                        <th>14</th>
                        <th>15</th>
                        <th>16</th>
                        <th>17</th>
                        <th>18</th>
                        <th>Х</th>
                    </tr>
                    <?php
    $args = array(

);
                        $args = array(
                        'post_type' => 'test_results',
                        'publish' => true,
                        'posts_per_page' => 8,
                        'paged' => get_query_var('paged'),
                        'post_status' => 'any',
                        'author'=> $cur_user_id,
                        'meta_query' => array(
                            'relation' => 'OR',
                            array(
                                'key' => 'curator',
                                'value' => $curid
                            )
                        )
                        );

                            query_posts($args);?>

                        <?			while ( have_posts() ) : the_post();?>

                            <tr>
                                <td>
                                    <a href="/input_results/?edit=<?php the_ID();?>&<?=$r_param?>">
                                        <?php echo get_field('s_name_student');?>
                                        <?php echo get_field('f_name_student');?>
                                    </a>
                                </td>
                                <td>
                                    <?php 
                                    
                                    //print_r(get_field('predmet2'));
                                    //$premet_title = get_field('predmet2') ;                        
                                    $premet_title = get_the_title(get_field('predmet2')) ;                        
                                    echo $premet_title;
                                    //print_r($sub_title=get_post_meta(get_field('predmet2'),'post_title'));
                                    // $sub_title['cust_subject']->post_title ;
                                    ?>
                                </td>
                                <td>
                                    <?php echo get_field('klass')." Класс";?>
                                </td>
                                <td>
                                    <?php echo get_field('A1');?>
                                </td>
                                <td>
                                    <?php echo get_field('A2');?>
                                </td>
                                <td>
                                    <?php echo get_field('A3');?>
                                </td>
                                <td>
                                    <?php echo get_field('A4');?>
                                </td>
                                <td>
                                    <?php echo get_field('A5');?>
                                </td>
                                <td>
                                    <?php echo get_field('A6');?>
                                </td>
                                <td>
                                    <?php echo get_field('A7');?>
                                </td>
                                <td>
                                    <?php echo get_field('A8');?>
                                </td>
                                <td>
                                    <?php echo get_field('A9');?>
                                </td>
                                <td>
                                    <?php echo get_field('A10');?>
                                </td>
                                <td>
                                    <?php echo get_field('A11');?>
                                </td>
                                <td>
                                    <?php echo get_field('A12');?>
                                </td>
                                <td>
                                    <?php echo get_field('A13');?>
                                </td>
                                <td>
                                    <?php echo get_field('A14');?>
                                </td>
                                <td>
                                    <?php echo get_field('A15');?>
                                </td>
                                <td>
                                    <?php echo get_field('A16');?>
                                </td>
                                <td>
                                    <?php echo get_field('A17');?>
                                </td>
                                <td>
                                    <?php echo get_field('A18');?>
                                </td>
                                <td> удалить</td>
                            </tr>

                            <? 
    endwhile;?>

                </tbody>
            </table>

            <?		the_posts_pagination( array(
				'prev_text' => twentyseventeen_get_svg( array( 'icon' => 'arrow-left' ) ) . '<span class="screen-reader-text">' . __( 'Previous page', 'twentyseventeen' ) . '</span>',
				'next_text' => '<span class="screen-reader-text">' . __( 'Next page', 'twentyseventeen' ) . '</span>' . twentyseventeen_get_svg( array( 'icon' => 'arrow-right' ) ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentyseventeen' ) . ' </span>',
			) );
                           ?>

        </div>
        <?} else {?>

            <div class="wrap">
                <div id="primary" class="content-area">
                    <main id="main" class="site-main" role="main">

                        <div class="text-center">В доступе отказанно !</div>
                    </main>
                    <!-- #main -->
                </div>
                <!-- #primary -->
            </div>
            <!-- .wrap -->
            <?}?>
                <?php get_footer();
