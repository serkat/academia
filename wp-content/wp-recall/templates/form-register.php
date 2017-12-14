<?php 
global $typeform;
$f_reg = ($typeform=='register')? 'style="display:block;"': ''; ?>

<div class="form-tab-rcl" id="register-form-rcl" <?php echo $f_reg; ?>>
    <div class="form_head">
        <div class="form_auth">
            <?php if(!$typeform){ ?>
            <a href="#" class="link-login-rcl link-tab-rcl">
                <?php _e('Authorization ','wp-recall'); ?>
            </a>
            <?php } ?>
        </div>
        <div class="form_reg form_active">
            <?php _e('Registration','wp-recall'); ?>
        </div>
    </div>

    <div class="form-block-rcl">
        <?php rcl_notice_form('register'); ?>
    </div>

    <?php $user_login = (isset($_REQUEST['user_login']))? $_REQUEST['user_login']: ''; ?>
    <?php $user_email = (isset($_REQUEST['user_email']))? $_REQUEST['user_email']: ''; ?>

    <form action="<?php rcl_form_action('register'); ?>" method="post" enctype="multipart/form-data">
        <div class="form-block-rcl default-field">
            <input type="text" required placeholder="Ваша Фамилия" class="text-field" name="last_name" id="last_name" value="">
            <span class="required">*</span>
        </div>
        <div class="form-block-rcl default-field">
            <input type="text" required="" placeholder="Ваше Имя" class="text-field" name="first_name" id="first_name" value="">
            <span class="required">*</span>
        </div>
        <div class="form-block-rcl default-field">
            <input type="text" required="" placeholder="Ваше Отчество" class="text-field" name="otchestvo_45" id="otchestvo_45" value="">
            <span class="required">*</span>
        </div>
        <div class="form-block-rcl default-field ">
            <input required type="hidden" placeholder="Введите ваш e-mail" value="<?php echo $user_login; ?>" name="user_login" id="login-user">
            <span class="required">*</span>
        </div>
        <div class="form-block-rcl default-field">
            <input required type="email" placeholder="<?php _e('E-mail','wp-recall'); ?>" value="<?php echo $user_email; ?>" name="user_email" id="email-user">
            <span class="required">*</span>
        </div>

        <div class="form-block-rcl form_extend">
            <?php do_action( 'register_form' ); ?>
        </div>
        <div class="form-block-rcl default-field">
            <input type="tel" required placeholder="Введите контактный номер телефона" class="validate[required,custom[telephone]] tel-field" name="telefon_72" id="telefon_72" maxlength="50" value="">
            <span class="required">*</span>
        </div>
        <div class="form-block-rcl default-field">
            <input type="text" required placeholder="Краткое наименование учебного заведения" class="text-field" name="uchebnoe_zavedenie_64" id="uchebnoe_zavedenie_64" value="">
            <span class="required">*</span>
        </div>
        <div class="form-block-rcl default-field">
            <input type="text" required placeholder="Индекс (учебного заведения)" class="text-field" name="indeks_uchebnogo_zavedeniya_51" id="indeks_uchebnogo_zavedeniya_51" value="">
            <span class="required">*</span>
        </div>
        <div class="form-block-rcl default-field">
            <textarea name="fakticheskij_adres_uchebnogo_zavedeniya_54" required="" placeholder="Фактический адрес учебного заведения" class="textarea-field" id="fakticheskij_adres_uchebnogo_zavedeniya_54" rows="5" cols="50"></textarea>
            <span class="required">*</span>
        </div>
        <div class="form-block-rcl default-field">
            <span class="rcl-checkbox-box"><input type="checkbox" required="" name="soglasie_25" id="soglasie_2531" value="1"> <label class="block-label" for="soglasie_2531">Согласен(а) на обработку моих персональных данных.<a target="_blank" href="http://cc49095-wordpress-4.tw1.ru/kontakty/">Подробнее</a></label></span>
        </div>

        <div class="form-block-rcl">
            <input type="submit" class="btn btn-register" name="submit-register" value="<?php _e('Signup','wp-recall'); // Зарегистрироваться ?>">

            <?php echo wp_nonce_field('register-key-rcl','_wpnonce',true,false); ?>
            <input type="hidden" name="redirect_to" value="<?php rcl_referer_url('register'); ?>">
        </div>
    </form>
</div>
<script>
 jQuery( "input[name$='user_email']" ).change(function () {
             jQuery( "input[name$='user_login']" ).val(this.value);
         });   
jQuery( "input[name$='submit-register']" ).click(function () {
    
         });

</script>