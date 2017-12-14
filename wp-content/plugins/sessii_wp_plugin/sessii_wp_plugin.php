<?php
/*
Plugin Name: Сессии
Plugin URI: 
Description: Сессии 
Version: 1.0.0
Author: Valerii
Author URI: 
*/

/* *************************************************************************************************************** */
function sessii_wp_plugin_admin_menu(){
    if ( function_exists('add_options_page') )
    {
       // $admin_page = add_menu_page( $page_title, $menu_title, $capability,$menu_slug, $function, $icon_url, $position );
        $admin_page = add_menu_page('Сессии', 'Сессии', 8, 'sessiitemplate',  'sessii_wp_plugin_admin_menu_form' );
		// Подгружаем стили и скрипты из папки плагина
		add_action( "admin_print_scripts-$admin_page", 'sessii_wp_plugin_admin_menu_form_head' );
    }
}

/* ******************************* */
// Подгружаем стили и скрипты из папки плагина
function sessii_wp_plugin_admin_menu_form_head(){
	$plugindir = get_settings('home').'/wp-content/plugins/'.dirname(plugin_basename(__FILE__));
	wp_enqueue_script('loadjs', $plugindir . '/sessii_wp_plugin.js');
	//wp_enqueue_script( 'jquery' ); // если нужно jquery - включите, дублироваться они не будут
	echo "<link rel='stylesheet' href='$plugindir/sessii_wp_plugin.css' type='text/css' />\n";
}

function sessii_wp_plugin_admin_menu_form(){
global $wpdb; 
$wpdb->sessii = "{$wpdb->prefix}sessii"; 
?>
<div class='wrap'>
	<div id="icon-options-general" class="icon32"><br /></div>
	<h2><?=!isset($_GET['sessia'])? 'Настройки Сессий' : 'Изменяем Сессию' ?></h2>
	<div class='content_body'>
<?php
if  (isset($_REQUEST['sessia'])){
    $id_sessia=$_REQUEST['sessia'];
    
echo "<h3>$row_sessii->name</h3>";
    
if (isset($_POST['edit'])) {
    
    $to_date = date('Y-m-d H:i:s', strtotime("+23 hours +59 minutes", strtotime($_POST['to_date'])));
  
    $upData = array(
        "name" => $_POST['name'],
        "uniq_number" => $_POST['uniq_number'],
        "from_date" => $_POST['from_date'],
        "to_date" => $to_date
      );
    $wpdb->show_errors();    
    $res = $wpdb->update( $wpdb->sessii, $upData, array("ID" => $id_sessia), array("%s"), array("%d") );

    if (isset($_POST['state']) || ($_POST['state'] == 1)) {

        $res = $wpdb->update( $wpdb->sessii, array("state" => 0), array("state" => 1), array("%d"), array("%d") );
        $res = $wpdb->update( $wpdb->sessii, array("state" => 1), array("ID" => $id_sessia), array("%d"), array("%d") );
    }    
    
    if ($res == 1){
        
            echo "<div class='masssage'>обновление прошло успешно</div>";
            header( 'Refresh: 5; url=http://cc49095-wordpress-4.tw1.ru/wp-admin/admin.php?page=sessiitemplate' );
    }

    
}
    
$row_sessii = $wpdb->get_row("SELECT * FROM $wpdb->sessii WHERE `id`='".$id_sessia."'");

?>    
<form role="form" method="post" action="/wp-admin/admin.php?page=sessiitemplate">
<input type="hidden" name="edit" value="1">
<input type="hidden" name="sessia" value="<?=$row_sessii->id?>">
<table class="form-table">

<tbody>
<tr>
<th scope="row">
    <label for="name">Уникальный номер</label></th>
<td>
    <input type="text" class="form-control" name="uniq_number" value="<?=$row_sessii->uniq_number?>">
    <p class="description" >Используется для создания выгрузки.</p>

</td>
</tr>
<tr>
<th scope="row">
    <label for="name">Название Сессии</label></th>
<td>
    <input type="text" class="form-control" name="name" value="<?=$row_sessii->name?>">
</td>
</tr>
<tr>
<th scope="row">
    <label for="name">Дата начала сессии</label></th>
<td>
    <input type="date" class="form-control" name="from_date" value="<? $date = date_create($row_sessii->from_date); echo date_format($date, 'Y-m-d')?>">
    <p class="description">текущее значение: <? $date = date_create($row_sessii->from_date); echo date_format($date, 'd-m-Y')?></p>
</td>
</tr>
<tr>
<th scope="row">
    <label for="name">Дата конца сессии</label></th>
<td>
    <input type="date" class="form-control" name="to_date" value="<? $date = date_create($row_sessii->to_date); echo date_format($date, 'Y-m-d') ?>">
        <p class="description">текущее значение: <? $date = date_create($row_sessii->to_date); echo date_format($date, 'd-m-Y')?></p>

</td>
</tr>
<tr>
<th scope="row">
    <label for="name">Статус сессии </label></th>
<td>
          <input type="checkbox" name="state" <?=$row_sessii->state==0 ? : 'checked' ?>> активная
          <p class="description">Для снятия активности, установите флажок в другой сессии.</p>

</td>
</tr>
<tr>
<th scope="row"></th>
<td>
<input type="submit" name="submit" id="submit" class="button button-primary" value="Сохранить изменения">
    <a class="button button-primary" href="http://cc49095-wordpress-4.tw1.ru/wp-admin/admin.php?page=sessiitemplate">Закрыть</a>

</td>
</tr>
</tbody></table>
</form> 
<?   
}else{   
 $posts = $wpdb->get_results("SELECT * FROM $wpdb->sessii");


   // print_r($posts);
echo "<table class='wp-list-table widefat '><thead><tr><th>Уник номер</th><th>Название</th><th>Дата начала</th><th>Дата окончания</th><th>Статус</th><th>Изменить</th></thead>";    
    if( $posts ) {
	foreach ( $posts as $post) {
        $checked=$post->state==0 ? ' ' : '<span class="glyphicon-ok"><img style="width: 15px;" src="'.get_settings('home').'/wp-content/plugins/'.dirname(plugin_basename(__FILE__)).'/img/d66cad927628ec8fe102c4d2e80f49.png"></span>';
 		echo "<tr>
	    <td class='id_sessii'>$post->uniq_number</td>
		<td class='name_sessii'>$post->name</td>
		<td class='year'>$post->from_date</td>
		<td class='year'>$post->to_date</td>
		<td class='state'>$checked </td>
		<td class='edit'><a href='/wp-admin/admin.php?page=sessiitemplate&sessia=$post->id'>Изменить</a></td>
    </tr>";       
	}
}
    echo"</table>"
?>
	
	</div>
</div>	
<?php
}        
}

/* ******************************* */
add_action('admin_menu',  'sessii_wp_plugin_admin_menu' );

?>