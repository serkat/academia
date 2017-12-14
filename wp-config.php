<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
define('FS_METHOD', 'direct');
/** Имя базы данных для WordPress */
define('DB_NAME', 'academia');

/** Имя пользователя MySQL */
define('DB_USER', 'mysql');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', 'mysql');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         './SDc(.ocKszYSrmCyDn1vMbc8(Pyz5kvhUkQ#8)v3&$jM]l9L9#J|gzil3.mX(P');
define('SECURE_AUTH_KEY',  '3*X@o<ih})KK&N0Pzw AscGsE+CZAjm_DnC3(/Ga+~u!45{p|g,gvD.! On/>wi)');
define('LOGGED_IN_KEY',    'Skp$<H<W7jez{#{rrzOz?LNd2[y4_]y$/HHpSR^cAK_e|qY*U[cmL]&sH}WiJ#U-');
define('NONCE_KEY',        't[MG#isahEz 1hM&ycC72q2-Q#cgT]%]fUmq^~uT.t]wk4C)u;kYLiLd+@bWlM;3');
define('AUTH_SALT',        '*ip6itWWTOf@pJzh/B kdFb(InV9jkhrCMIQ+gfAz~F)j.uO9:JR9:k>]Ht]aD/r');
define('SECURE_AUTH_SALT', '76[hOE9c})1z;;~m8%&^O2_$RSTCj4 uZY`{oM#G`zPWog>H>A*J1M~]!HH@6ZNg');
define('LOGGED_IN_SALT',   'Ofgh^SaqFE>IoU9rPv6-p7$~A)sy .PooQ3h8wEG)|~J5DP}5]+yi/n{-(-HUfx*');
define('NONCE_SALT',       'Mh!-[<rh@P!oh6Ptd[51fxveLlJy_`/;d1)Y{dr=1nGGicOpDy$ ciGKi5g%@LhM');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
