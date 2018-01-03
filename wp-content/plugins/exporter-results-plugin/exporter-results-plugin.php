<?php
/*
Plugin Name: Экспорт результаов
Plugin URI: 
Description: Экспорт результаов тестирования 
Version: 1.0.0
Author: Valerii
Author URI: 
*/

/* *************************************************************************************************************** */
$file = '../wp-content/plugins/'.dirname(plugin_basename(__FILE__)).'/data_export_' . date("Y-m-d") . '.csv';

function export_progress(){
   
    echo "export_progress работает  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
    $now = gmdate("D, d M Y H:i:s");
    header("Expires: Tue, 03 Jul 2001 06:00:00 GMT");
    header("Cache-Control: max-age=0, no-cache, must-revalidate, proxy-revalidate");
    header("Last-Modified: {$now} GMT");


}
add_action('admin_menu',  'exporter_results_plugin_admin_menu' );

function exporter_results_plugin_admin_menu(){
    if ( function_exists('add_options_page') )
    {
       $admin_page = add_menu_page('Экспорт Результатов', 'Экспорт Результатов', 8, 'expresult',  'exporter_results_plugin_admin_menu_form', 'dashicons-media-spreadsheet','30.2' );
        //$admin_page = add_submenu_page('edit.php?post_type=test_results', 'Экспорт Результатов', 'Экспорт Результатов', 'unfiltered_html    ', 'expresult',  'exporter_results_plugin_admin_menu_form' );
		// Подгружаем стили и скрипты из папки плагина
        add_action( "admin_print_scripts-$admin_page", 'admin_enqueue_scripts');
    
    }
}

add_action('admin_menu', 'register_my_custom_submenu_page');

function register_my_custom_submenu_page() {
	add_submenu_page( 'tools.php', 'Дополнительная страница инструментов', 'Название инструмента', 'manage_options', 'my-custom-submenu-page', 'my_custom_submenu_page_callback' ); 
}
/* ******************************* */
// Подгружаем стили и скрипты из папки плагина

function admin_enqueue_scripts( )
        {

                wp_register_style( 'exporter-results-plugin', plugins_url( 'exporter-results-plugin.css' ,__FILE__ ), '', Q_EUD );
                wp_enqueue_style( 'exporter-results-plugin' );
                wp_enqueue_script( 'exporter-results-plugin_js', plugins_url( 'exporter-results-plugin.js', __FILE__ ), array('jquery'), '0.9.8', false );

        }



function exporter_results_plugin_admin_menu_form(){
global $file;    
$list = array ();
    
    echo "<div class='h1 wp-heading-inline'> Экспорт работ</div>";
    
if ( is_user_logged_in() ) {  
 
array_push($list,    array('SessionID','UserID','KuratorID','ZayavkaID','FIO_Kurator','Family','Name','Class','Subject','A1','A2','A3','A4','A5','A6','A7','A8','A9','A10','A11','A12','A13','A14','A15','A16','A17','A18')
    ); 

?>
    <div class="wrap mtop_60">

        <? if(empty($_GET['start_date'])){?>
            <div>
                <form action="" enctype="multipart/form-data">
                    <input type="hidden" name="page" value="expresult">
                    <input type="text" name="start_date" class="datepicker" required>
                    <input type="text" name="end_date" class="datepicker" required>
                    <p class="description">Выберите начальную и конечную даты для ограничения результатов.</p>
                    <input type="submit" value="Экспорт" class="wp-core-ui button-primary">
                </form>
            </div>
            <? } else {
    
        $date=new DateTime($_GET['start_date']);
        $start_date=$date->Format('Y-m-d');
        $date=new DateTime($_GET['end_date']);
        $end_date=$date->Format('Y-m-d');
    
        ?>

                <div class="h2 wp-heading-inline">Файл экспорта попадут работы учасников с
                    <?=$_GET['start_date']?> по
                        <?=$_GET['end_date']?> включая сами даты.</div>
                <div class="btn-block">
                    <a href="/wp-admin/admin.php?page=expresult" class="wp-core-ui button-primary"> Назад к Выбору дат</a>
                    <a href="<?=$file?>" class="wp-core-ui button-primary" download> Скачать файл</a>
                </div>
<div class="export-list">
                <table>
                    <tbody>
                        <tr class="theader">
                            <th>SessionID</th>
                            <th>UserID</th>
                            <th>KuratorID</th>
                            <th>ZayavkaID</th>
                            <th>FIO_Kurator</th>
                            <th>Family</th>
                            <th>Name</th>
                            <th>Class</th>
                            <th>Subject</th>
                            <th>A1</th>
                            <th>A2</th>
                            <th>A3</th>
                            <th>A4</th>
                            <th>A5</th>
                            <th>A6</th>
                            <th>A7</th>
                            <th>A8</th>
                            <th>A9</th>
                            <th>A10</th>
                            <th>A11</th>
                            <th>A12</th>
                            <th>A13</th>
                            <th>A14</th>
                            <th>A15</th>
                            <th>A16</th>
                            <th>A17</th>
                            <th>A18</th>
                        </tr>
                        <?php
    $args = array(

);
    
                        $args = array(
                        'post_type' => 'test_results',
                        'publish' => true,
                        'posts_per_page' => -1,
#                        'paged' => get_query_var('paged'),
                        'post_status' => 'any',
#                        'author'=> $cur_user_id,
#                        'meta_key' => 'startdate',
#                        'meta_value' => date("Y-m-d"),
                        'date_query'    => array(
                                'column'  => 'post_date',
                                'after'   => $start_date,
                                'before'   => $end_date,
                                'inclusive'=> true
                            ),
 //                       'meta_query' => array(
#                            'relation' => 'OR',
#                            array(
#                                'key' => 'curator',
#                                'value' => $curid
#                            )
#                        )
                        );

                            query_posts($args);?>

                            <?			while ( have_posts() ) : the_post();
    $post=get_post();
array_push($list,    array( 
    iconv("UTF-8", "WINDOWS-1251",get_field('sessia')),
    iconv("UTF-8", "WINDOWS-1251",$post->post_author),
    iconv("UTF-8", "WINDOWS-1251",get_field('curator')),
    iconv("UTF-8", "WINDOWS-1251",get_field('number_bids')),
    iconv("UTF-8", "WINDOWS-1251",get_the_title(get_field('curator'))),
    iconv("UTF-8", "WINDOWS-1251",get_field('s_name_student')),
    iconv("UTF-8", "WINDOWS-1251",get_field('f_name_student')),
    iconv("UTF-8", "WINDOWS-1251",get_field('klass')),
    iconv("UTF-8", "WINDOWS-1251",get_the_title(get_field('predmet2'))),
    iconv("UTF-8", "WINDOWS-1251",get_field('A1')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A2')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A3')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A4')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A5')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A6')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A7')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A8')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A9')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A10')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A11')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A12')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A13')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A14')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A15')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A16')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A17')),
    iconv("UTF-8", "WINDOWS-1251",get_field('A18'))
    ));
   ?>
                                <tr>
                                    <td>
                                        <?php echo get_field('sessia');?>
                                    </td>
                                    <td>
                                        <?=$post->post_author?>
                                    </td>
                                    <td>
                                        <?php echo get_field('curator');?>
                                    </td>
                                    <td>
                                        <?php echo get_field('number_bids');?>
                                    </td>
                                    <td>
                                        <?php echo get_the_title(get_field('curator'));?>
                                    </td>
                                    <td>
                                        <?php echo get_field('s_name_student');?>
                                    </td>
                                    <td>
                                        <?php echo get_field('f_name_student');?>
                                    </td>
                                    <td>
                                        <?php echo get_field('klass');?>
                                    </td>
                                    <td>
                                        <?php echo get_the_title(get_field('predmet2')) ;?>
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
                                </tr>

                                <? 
    endwhile;?>

                    </tbody>
                </table>
</div>                
                <div class="btn-block">
                    <a href="/wp-admin/admin.php?page=expresult" class="wp-core-ui button-primary"> Назад к Выбору дат</a>
                    <a href="<?=$file?>" class="wp-core-ui button-primary" download> Скачать файл</a>
                </div>
                <?#		the_posts_pagination( array(
#				'prev_text' => twentyseventeen_get_svg( array( 'icon' => 'arrow-left' ) ) . '<span class="screen-reader-text">' . __( 'Previous page', 'twentyseventeen' ) . '</span>',
#				'next_text' => '<span class="screen-reader-text">' . __( 'Next page', 'twentyseventeen' ) . '</span>' . twentyseventeen_get_svg( array( 'icon' => 'arrow-right' ) ),
#				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentyseventeen' ) . ' </span>',
#			) );
                           ?>

    </div>
    <?}} else {?>

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
        <script>
            jQuery(document).ready(function($) {
                        jQuery("#datepicker").datepicker();
                    }

        </script>
        <?} 
/*    
$fp = fopen($file, 'w');
foreach ($list as $fields) {
	fputcsv($fp, $fields, ';', '\'');
}
fclose($fp);    
*/
    
function array2csv(array &$array)
{ global $file;

   if (count($array) == 0) {
     return null;
   }
   ob_start();
   $df = fopen($file, 'w');
 //  fputcsv($df, array_keys(reset($array)));
   foreach ($array as $row) {
      fputcsv($df, $row,";");
   }
   fclose($df);
   return ob_get_clean();
}


#download_send_headers("data_export_" . date("Y-m-d") . ".csv");
array2csv($list);
#die();
    
}


datepicker_js();

function datepicker_js(){
	// подключаем все необходимые скрипты: jQuery, jquery-ui, datepicker
	wp_enqueue_script('jquery-ui-datepicker');

	// подключаем нужные css стили
	wp_enqueue_style('jqueryui', 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css', false, null );

	// инициализируем datepicker
	if( is_admin() )
		add_action('admin_footer', 'init_datepicker', 99 ); // для админки
	else
		add_action('wp_footer', 'init_datepicker', 99 ); // для админки

	function init_datepicker(){
		?>
            <script type="text/javascript">
                jQuery(document).ready(function($) {
                    'use strict';
                    // настройки по умолчанию. Их можно добавить в имеющийся js файл, 
                    // если datepicker будет использоваться повсеместно на проекте и предполагается запускать его с разными настройками
                    $.datepicker.setDefaults({
                        closeText: 'Закрыть',
                        prevText: '<Пред',
                        nextText: 'След>',
                        currentText: 'Сегодня',
                        monthNames: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
                        monthNamesShort: ['Янв', 'Фев', 'Мар', 'Апр', 'Май', 'Июн', 'Июл', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек'],
                        dayNames: ['воскресенье', 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота'],
                        dayNamesShort: ['вск', 'пнд', 'втр', 'срд', 'чтв', 'птн', 'сбт'],
                        dayNamesMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
                        weekHeader: 'Нед',
                        dateFormat: 'dd-mm-yy',
                        firstDay: 1,
                        showAnim: 'slideDown',
                        isRTL: false,
                        showMonthAfterYear: false,
                        yearSuffix: ''
                    });

                    // Инициализация
                    $('input[name*="date"], .datepicker').datepicker({
                        dateFormat: 'dd-mm-yy'
                    });
                    // можно подключить datepicker с доп. настройками так:
                    /*
			$('input[name*="date"]').datepicker({ 
				dateFormat : 'yy-mm-dd',
				onSelect : function( dateText, inst ){
		// функцию для поля где указываются еще и секунды: 000-00-00 00:00:00 - оставляет секунды
		var secs = inst.lastVal.match(/^.*?\s([0-9]{2}:[0-9]{2}:[0-9]{2})$/);
		secs = secs ? secs[1] : '00:00:00'; // только чч:мм:сс, оставим часы минуты и секунды как есть, если нет то будет 00:00:00
		$(this).val( dateText +' '+ secs );
				}
			});
			*/
                });

            </script>
            <?php
	}
}


/* ******************************* */


?>
