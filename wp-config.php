<?php
/**
 * Основные параметры WordPress.
 *
 * Этот файл содержит следующие параметры: настройки MySQL, префикс таблиц,
 * секретные ключи и ABSPATH. Дополнительную информацию можно найти на странице
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Кодекса. Настройки MySQL можно узнать у хостинг-провайдера.
 *
 * Этот файл используется скриптом для создания wp-config.php в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать этот файл
 * с именем "wp-config.php" и заполнить значения вручную.
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', '3d');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', 'root');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

define('FS_METHOD','direct');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '}SQ5X~POi>TU)){`K{{cbl?nbZ%1CKOH$>Wojq-Xx?v|g?{Uq>nhUq(*_+;] JyU');
define('SECURE_AUTH_KEY',  '0yV&0HpO|&pu(a-c RVF++=ooTahe=ZmWg!:P?]gWD6E~0%Dr|C[{P .h-sdn(bk');
define('LOGGED_IN_KEY',    ':-^DSXmb;{izmHG)VF?/?a=^efj7riUFmX-<cK(PdMT%xZ1 { 2(Cl#3l9coK#Sk');
define('NONCE_KEY',        '+SL~|}iC+0i#xB0jkeOeYvXFAa<|-OJPUD^P6=rrM#K|l*e7+Dl].^Uvpq-c7x|+');
define('AUTH_SALT',        '+lXV[]WAwjqS1k59bl <i|/5Dq 8PLE[vb+3==V{T#4>J8Bx{>|I,Le9RT/gpJb?');
define('SECURE_AUTH_SALT', 'SS{T)Ll-7O%f*L7[{qO@Upyb-<V%?dT~R2o8f1pk=mIDLN|1+e-JQzZ(ufm7ULL-');
define('LOGGED_IN_SALT',   '-izSWZK4/&)D$rd63S4.dAJ|hs}F/>y*hz-T,j*vzD%PBJaQ*ukkUR0^ `sED:[v');
define('NONCE_SALT',       'h2r;yJ47oKfzF8Y@]yv4tPtYx5q@*(zDRT`Q=uj+Jeir1<Ii^^j#r4TsS)> >am|');

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
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
