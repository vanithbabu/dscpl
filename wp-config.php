<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'dscpl' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('FS_METHOD', 'direct');

//define('WP_HOME', 'http://159.203.159.79');
//define('WP_SITEURL', 'http://159.203.159.79');

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '9%*1dl*It.UC?1HT9pRSad1xR~wIw92m(tK(6s05(.mv5lUuDLec=5?y#SUciLJS' );
define( 'SECURE_AUTH_KEY',  'na}TJfrsnM][?XS52NE(Ba#`Ku-%2$F?<ymq`Y,|1)CW1m)X3${^#{#o.HQpu0`1' );
define( 'LOGGED_IN_KEY',    '|q$]lbYO<6oiZCtnW1Lfd2zOcU>[65/Fem:%]nTr|.>,(`wVL}$u11~-%S*XK AH' );
define( 'NONCE_KEY',        '+KuPs]%&bnuoM[kr}<IjFUmQvz[?mP{ ($H-6_p*k_(+W4}Dx%z[C@h^,[3? Q$q' );
define( 'AUTH_SALT',        'TQjnM,NHYw?OVBjVCI4:<`-&[-:]8QsR0X`,wTH(}ki.$Zxpcp,W[EU2?yy*m[wA' );
define( 'SECURE_AUTH_SALT', ':nuIpkN5D.Iq5{=xv[qW5XZ=A_$$<uAzQs>2n4$k0(X>7-cv$XyzEm?;R:<2[g}n' );
define( 'LOGGED_IN_SALT',   '&o%+wr07!?4~<FP% [(I9e0M]v/&M:Z?ru1]&%xm/`6~mhk=g{vlE?Mn5[1AlUs*' );
define( 'NONCE_SALT',       '.wzW]L[+Uzcq=>XCMZxx41qjMRd7/U&3k/[<<NL+#GqeGQ#z,y1i+{RN/?IhD1n3' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'dscpl_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
