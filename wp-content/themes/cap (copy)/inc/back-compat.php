<?php
/**
 * cap back compat functionality
 *
 * Prevents cap from running on WordPress versions prior to 4.1,
 * since this theme is not meant to be backward compatible beyond that and
 * relies on many newer functions and markup changes introduced in 4.1.
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

/**
 * Prevent switching to cap on old versions of WordPress.
 *
 * Switches to the default theme.
 *
 * @since cap 1.0
 */
function cap_switch_theme() {
	switch_theme( WP_DEFAULT_THEME, WP_DEFAULT_THEME );
	unset( $_GET['activated'] );
	add_action( 'admin_notices', 'cap_upgrade_notice' );
}
add_action( 'after_switch_theme', 'cap_switch_theme' );

/**
 * Add message for unsuccessful theme switch.
 *
 * Prints an update nag after an unsuccessful attempt to switch to
 * cap on WordPress versions prior to 4.1.
 *
 * @since cap 1.0
 */
function cap_upgrade_notice() {
	$message = sprintf( __( 'cap requires at least WordPress version 4.1. You are running version %s. Please upgrade and try again.', 'cap' ), $GLOBALS['wp_version'] );
	printf( '<div class="error"><p>%s</p></div>', $message );
}

/**
 * Prevent the Customizer from being loaded on WordPress versions prior to 4.1.
 *
 * @since cap 1.0
 */
function cap_customize() {
	wp_die( sprintf( __( 'cap requires at least WordPress version 4.1. You are running version %s. Please upgrade and try again.', 'cap' ), $GLOBALS['wp_version'] ), '', array(
		'back_link' => true,
	) );
}
add_action( 'load-customize.php', 'cap_customize' );

/**
 * Prevent the Theme Preview from being loaded on WordPress versions prior to 4.1.
 *
 * @since cap 1.0
 */
function cap_preview() {
	if ( isset( $_GET['preview'] ) ) {
		wp_die( sprintf( __( 'cap requires at least WordPress version 4.1. You are running version %s. Please upgrade and try again.', 'cap' ), $GLOBALS['wp_version'] ) );
	}
}
add_action( 'template_redirect', 'cap_preview' );
