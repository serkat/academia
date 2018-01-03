<?
global $r_param;

 $options = array(
                    'post_id'		=> 'new_test',
                    'post_content'	=> false,
                    'field_groups'  => array(267,285),
                    'submit_value'       => ' ДОБАВИТЬ',
                    'label_placement' => 'left',
                    'updated_message' => 'Ваша запись поставлена в очередь на модерацию',
                    'return' => $home_url.'/input_results/?'.$r_param


            );

            acf_form( $options );
?>


