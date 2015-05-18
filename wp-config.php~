<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', '3d');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('FS_METHOD','direct');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
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
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
