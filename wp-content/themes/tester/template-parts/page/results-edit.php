<?
$postEditId = $_GET['edit'];
global $klass,$sid,$curid,$bidid,$subid,$klass;
$r_param = 'sid='.$sid.'&curid='.$curid.'&bidid='.$bidid.'&subid='.$subid.'&klass='.$klass;

 $options = array('post_id'	=> $postEditId ,
					'post_title'	=> false,
					'submit_value'	=> 'ОБНОВИТЬ',
                    'label_placement' => 'left',
                    'updated_message' => 'Ваша запись поставлена в очередь на модерацию',                  
                    'return' => $home_url.'/input_results/?'.$r_param


            );

            acf_form( $options );
?>