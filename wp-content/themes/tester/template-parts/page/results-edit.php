<?
$postEditId = $_GET['edit'];

 $options = array('post_id'	=> $postEditId ,
					'post_title'	=> false,
					'submit_value'	=> 'ОБНОВИТЬ',
                    'return' => $home_url.'/input_results/?sid=264&curid=379&bidid=303&subid=247'


            );

            acf_form( $options );
?>