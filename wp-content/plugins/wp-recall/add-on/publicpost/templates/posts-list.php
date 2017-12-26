<?php global $post,$posts,$ratings; ?>

<table class="publics-table-rcl rcl-form">

	<tr>
        <td>№ заявки</td>
        <td>Статус заявки</td>
        <td>Количество участников</td>
        <td>Сумма к оплате</td>
        <td>Статус оплаты</td>
        <td colspan="4"></td>
	</tr>

	<?php foreach($posts as $postdata){ /*echo '<pre>';var_dump($postdata); echo '</pre>';*/?>


		<?php foreach($postdata as $post){ setup_postdata($post);

			/*echo '<pre>';var_dump($post); echo '</pre>';*/
			?>
			<?php if($post->post_status=='new') {$status = '<span class="status-pending">Новая заявка</span>'; }
			elseif($post->post_status=='download') $status = '<span class="status-pending">Скачать материалы</span>';
            elseif($post->post_status=='waiting_for_pay') $status = '<span class="status-draft">Ожидает оплаты</span>';
            elseif($post->post_status=='paid') $status = '<span class="status-paid">Оплачено</span>';
			else $status = '<span class="status-closed">Закрыто</span>';

			if ($post->pay_status =='not_paid'){$pay_status = '<span class="paystatus-not_paid">Ожидает оплаты</span>'; }
			elseif ($post->pay_status =='is_paid'){$pay_status = '<span class="paystatus-is_paid">Заявка оплачена</span>'; }
			?>

			<tr>

                <td width="50"><?php echo $post->ID; ?></td>
                <td><?php echo $status ?></td>

				<td><?php echo $post->amount_of_participants; ?>

				<!--?php echo ($post->post_status=='trash')? $post->post_title: '<a target="_blank" href="'.$post->guid.'">'.$post->post_title.'</a>'; ?-->

				</td>
                <td><?php echo $post->pay_summ; ?></td>
                <td><?php echo $pay_status; ?></td>

                <!--td><!?php echo mysql2date('d.m.y', $post->post_date); ?></td-->
                <td><a href="<?php echo ($home_url.'/qwe/redaktirovanie-zayavki/?pid='.$post->ID); ?>">Открыть/ Изменить</a></td>
                <td><a href="#">Скачать материалы</a></td>
                <td><a href="#">Оплатить</a></td>
                <td><a href="#">Загрузить анкеты</a></td>

			</tr>
		<?php } ?>

	<?php } ?>

</table>
