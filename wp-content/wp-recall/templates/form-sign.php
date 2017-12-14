<?php
global $typeform;

if(!$typeform||$typeform=='sign2') $f_sign = 'style="display:block;"'; ?>

    <div class="form-tab-rcl" id="login-form-rcl" <?php echo $f_sign; ?>>
        <div class="form_head">
            <div class="text-center login_head">Для отправки заявки, тестов или оплаты войдите в личный кабинет</div>
        </div>

        <div class="form-block-rcl">
            <?php rcl_notice_form('login'); ?>
        </div>

        <?php $user_login = (isset($_REQUEST['user_login']))? $_REQUEST['user_login']: ''; ?>
        <?php $user_pass = (isset($_REQUEST['user_pass']))? $_REQUEST['user_pass']: ''; ?>

        <form action="<?php rcl_form_action('login'); ?>" method="post">
            <div class="form-block-rcl default-field">
                <input required type="text" placeholder="Введите ваш e-mail" value="<?php echo $user_login; ?>" name="user_login">
            </div>
            <div class="form-block-rcl default-field">
                <input required type="password" placeholder="Введите пароль" value="<?php echo $user_pass; ?>" name="user_pass">
                <div class="form-block-rcl default-field">
                    <a href="#" class="link-remember-rcl link-tab-rcl ">Забыли пароль?</a>
                </div>
            </div>


            <div class="form-block-rcl">
                <input type="submit" class="link-tab-form btn btn-login" name="submit-login" value="ВОЙТИ">
                <?php echo wp_nonce_field('login-key-rcl','_wpnonce',true,false); ?>
                <input type="hidden" name="redirect_to" value="<?php rcl_referer_url('login'); ?>">
            </div>
            <div class="form-block-rcl">
                <button type="submit" class="btn btn-register rcl-register"><span class="little">Если Вы в первый раз на сайте</span>
            <div class="bold"><strong>ПРОЙДИТЕ РЕГИСТРАЦИЮ </strong><i class="fa fa-caret-square-o-right" aria-hidden="true"></i></div></button>
            </div>
        </form>
    </div>
