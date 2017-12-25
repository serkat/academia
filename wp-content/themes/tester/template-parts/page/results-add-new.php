<?
 $options = array(
                    'post_id'		=> 'new_post',
                    'new_post'		=> array(
                    'post_type'		=> 'test_results',
                    'post_status'		=> 'draft',
                    'post_title'  => 'A title, maybe a '.$_POST[acf][field_5a3d11f912cb1].' variable' ,

                    ),
                    'post_content'	=> false,
                    'field_groups'  => array(267,285),
                    'submit_value'       => ' ДОБАВИТЬ',
                    'label_placement' => 'left',
                    'updated_message' => 'Ваша запись поставлена в очередь на модерацию',

            );

            acf_form( $options );
?>