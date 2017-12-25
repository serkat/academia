<?
$postEditId = $_GET['edit'];

 $options = array('post_id'	=> $postEditId ,
					'post_title'	=> false,
					'submit_value'	=> 'ОБНОВИТЬ',
                    'return' => $home_url.'/input_results/'


            );

            acf_form( $options );
?>