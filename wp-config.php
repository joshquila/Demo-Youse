<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'youse1_demotee');

/** MySQL database username */
define('DB_USER', 'youse1_demotee');

/** MySQL database password */
define('DB_PASSWORD', '$wPoqX_(0f7g');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '.b9ngf}!@{{w}zy>LfB5&/490X^tb_1RnYa}g#k@M_?9 XNrU8Q,{h|w~3U~m`yL');
define('SECURE_AUTH_KEY',  '`jd)ln:d$FUyvW^Q@;Y,/5=$DsU[`8j~xDL|+HR&#-:UwV!s|qZye!Hb[.d-N+ks');
define('LOGGED_IN_KEY',    'w?dCob}R}+?[J>m4$Bspd$n u7my+86`y?aLuf1pen`(iG=Ayo.f||k8w@>6 @Ko');
define('NONCE_KEY',        'v9:N/_x=Z84Sfk,ADk9++,G]q0.8d`]w@Pg0 ~$4fdwMZ,Rz&seRDek&C_v^kl/f');
define('AUTH_SALT',        'bWj|(>Z[aav5YcZ;ZPv!DBv)86zID2hiqg,0BL(e+}P[6Bo=Sw+$2;Teh)3zY,!j');
define('SECURE_AUTH_SALT', '*0^fG@e|$m)kpe}IdqZg<tRLP*t,W;rm-ytHYydA!7|)P^O_0{b=U-dZLj58N_aH');
define('LOGGED_IN_SALT',   's>kF`(5Y#w-<4$9)9yeg$&;hz  Bd>0@c_,1!r] j`#i<TqNE^V2z-*Sn;Aa[z=6');
define('NONCE_SALT',       '-}51cR+|TC oTk5-MZ(zDpf)qz9hf4;!(pC$%5-6*S_To<yiDwBgAg4L*vs^-0VX');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

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
