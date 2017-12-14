<? if ( is_user_logged_in() ) {
global $rcl_user_URL;
?>
    <style>
        .pageform a {
            color: #fff;
        }

        .welcome {
            display: flex;
            flex-direction: row;
            padding: 15px;
        }

        .welcome_text {
            display: flex;
            flex-direction: column;
            margin-left: 10px;
            justify-content: center;
        }

        .welcome span.little {
            color: #aeaeae;
            font-size: 12px;
            line-height: 1;
        }

        .welcome span.bold {
            font-size: 18.5px;
            font-weight: bold;
        }

        .panel_lk_recall.pageform {
            display: flex;
            height: 100%;
        }

        .form-tab-rcl {
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }

        .btn-login {
            background: #05bb23;
            border-color: #05bb23;
            padding: 15px 0;
            font-size: 20px;
            font-weight: 300;
        }

        .btn-login:hover {
            background: #079f20;
            border-color: #079f20;
        }

        .btn-lk {
            width: 100%;
            font-size: 20px;
            text-transform: uppercase;
            padding: 15px 0 !important;
            font-weight: 100;
            color: #fff !important;
        }

    </style>

    <div class="panel_lk_recall pageform">
        <div class="form-tab-rcl" id="login-form-rcl" style="display:flex;">
            <div class="welcome">
                <div class="welcome_img"><img src="/wp-content/themes/tester/assets/images/user.png" alt=""></div>
                <div class="welcome_text "><span class="little">Вы вошли как</span>
                <span class="bold">
                <? $user_id=get_current_user_id();?>
                <? $user_meta=get_user_meta($user_id,'last_name'); echo $user_meta[0]." "; $user_meta=get_user_meta($user_id,'first_name'); echo $user_meta[0];?>
                </span>
                </div>
            </div>
            <div class="form-block-rcl">
                <a href="<? echo $rcl_user_URL;?>" class="btn-lk btn btn-login">
                    <div class="bold"> Перейти в <br> личный кабинет </div>
                </a>
            </div>
            <div class="form-block-rcl">
                    <a href="<?php echo wp_logout_url( home_url() ); ?>" class="btn-lk btn btn-register rcl-register">
                        <div class="bold">ВЫЙТИ <i class="fa fa-caret-square-o-right" aria-hidden="true"></i></div>
                    </a>
            </div>
        </div>
    </div>

    <?}else{?>
        <div class="panel_lk_recall pageform">
            <div class="form-tab-rcl" id="login-form-rcl" style="display:block;">
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
                            <a href="/?action-rcl=remember" class="link-remember-rcl">Забыли пароль?</a>
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
        </div>
        <? }?>
