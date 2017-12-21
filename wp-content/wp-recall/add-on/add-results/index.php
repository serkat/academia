<?php
//Создадим новую вкладку ЛК с контактной формой, видимой только хозяину личного кабинета.
add_action('init','add_tab_addResult');
function add_tab_addResult(){
  acf_form_head();  
    $tab_data =	array(
        'id'=>'addResult',
        'name'=>'Загрузить результаты тестов',
        'public'=>0,//делаем вкладку приватной
        'icon'=>'fa-file-text',//указываем иконку
        'output'=>'menu',//указываем область вывода
        'content'=>array(
            array( //массив данных первой дочерней вкладки
                'callback' => array(
                    'name'=>'addResult_recall_block',//функция формирующая контент
                )
            )
        )
    );

    rcl_tab($tab_data);

}

function addResult_recall_block($user_lk){
    $content = '<h3 class="recents-title">Загрузить результаты тестов</h3>';

    $options = array(
        'id' => 'acf-form',
		'post_id'		=> 'new_post',
        'form'          => true,
		'post_title'	=> true,
		'post_content'	=> true,
        'return'        => '/account/?tab=addResult',
        'field_groups'  => array(249),
        'submit_value'       => ' ДОБАВИТЬ',
        'label_placement' => 'left',
		'updated_message' => 'Ваша запись поставлена в очередь на модерацию'
);

    $content .= acf_form( $options );
    
    return $content;
}
