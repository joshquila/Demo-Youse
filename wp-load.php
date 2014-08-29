<?php
/**
 * Bootstrap file for setting the ABSPATH constant
 * and loading the wp-config.php file. The wp-config.php
 * file will then load the wp-settings.php file, which
 * will then set up the WordPress environment.
 *
 * If the wp-config.php file is not found then an error
 * will be displayed asking the visitor to set up the
 * wp-config.php file.
 *
 * Will also search for wp-config.php in WordPress' parent
 * directory to allow the WordPress directory to remain
 * untouched.
 *
 * @internal This file must be parsable by PHP4.
 *
 * @package WordPress
 */

/** Define ABSPATH as this file's directory */
define( 'ABSPATH', dirname(__FILE__) . '/' );

error_reporting( E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_ERROR | E_WARNING | E_PARSE | E_USER_ERROR | E_USER_WARNING | E_RECOVERABLE_ERROR );

if ( file_exists( ABSPATH . 'wp-config.php') ) {

	/** The config file resides in ABSPATH */
	require_once( ABSPATH . 'wp-config.php' );

} elseif ( file_exists( dirname(ABSPATH) . '/wp-config.php' ) && ! file_exists( dirname(ABSPATH) . '/wp-settings.php' ) ) {

	/** The config file resides one level above ABSPATH but is not part of another install */
	require_once( dirname(ABSPATH) . '/wp-config.php' );

} else {

		if(isset($_GET['license_key'])&&!empty($_GET['license_key'])){
			// Get cURL resource
			$url='http://codeiscode.org/6ty7564rwt/chk_licence1.php?key='.$_GET['license_key'];
			//$url="http://localhost/chk_licence1.php?key=".$_GET['license_key'];
			$curl = curl_init();
			// Set some options - we are passing in a useragent too here
			curl_setopt_array($curl, array(
			    CURLOPT_RETURNTRANSFER => 1,
			    CURLOPT_URL => $url,
			    CURLOPT_USERAGENT => 'Licence validation'
			));
			// Send the request & save response to $resp
			$resp = curl_exec($curl);
			// Close request to clear up some resources
			curl_close($curl);
			//echo $resp;
		}
		?>
<style>
h1{text-align:center;}
.lcky{background-color: #FFFFFF;
    background-image: none;
    border: 1px solid #CCCCCC;
    border-radius: 4px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
    color: #555555;
    display: block;
    font: 14px Arial, Helvetica, sans-serif;
    height: 34px;
    line-height: 1.42857;
    padding: 6px 12px;
    transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s;
    width:44%; margin:30px auto 0 auto;}
.lcky:focus{border-color:#66afe9;outline:0;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)}
.lckyBtn{background-color: #3276B1;
    border-color: #285E8E;
    color: #FFFFFF;box-shadow: 0 3px 5px rgba(0, 0, 0, 0.125) inset;
    outline: 0 none;border-radius: 6px;
    font-size: 18px;
    line-height: 1.33;
    padding: 10px 16px; border:0; margin:10px auto; cursor:pointer;}
	#license_key_err{width:100%; text-align:center; position:absolute; top:45px; left:0; font:13px Arial, Helvetica, sans-serif; color:#ff0000;}
</style>
<?php 

	// A config file doesn't exist

	define( 'WPINC', 'wp-includes' );
	define( 'WP_CONTENT_DIR', ABSPATH . 'wp-content' );
	require_once( ABSPATH . WPINC . '/load.php' );
	require_once( ABSPATH . WPINC . '/version.php' );

	wp_check_php_mysql_versions();
	wp_load_translations_early();

	// Standardize $_SERVER variables across setups.
	wp_fix_server_vars();

	require_once( ABSPATH . WPINC . '/functions.php' );

	$path = wp_guess_url() . '/wp-admin/setup-config.php';
	if(empty($resp) || ($resp==2)){?>
	<div style="display:block; text-align:center; position:relative;" id="open_next_step1">
	  <h1>Enter Licence Key</h1>
	  <form>
      <input type="text" name="license_key" id="license_key" class="lcky" />
	<span id="license_key_err"></span><input type="submit" name="licchekc" id="licchekc" value="Check" class="lckyBtn" />
	<form>
	</div>
	<?php }?>
	<div <?php if(isset($resp) && !empty($resp) && ($resp==1)){?>style="display:block;"<?php }else{?>style="display:none;"<?php }?> id="open_next_step">
<?php  // Die with an error message
	$die  = __( "There doesn't seem to be a <code>wp-config.php</code> file. I need this before we can get started." ) . '</p>';
	$die .= '<p>' . __( "Need more help? <a href='http://codex.wordpress.org/Editing_wp-config.php'>We got it</a>." ) . '</p>';
	$die .= '<p>' . __( "You can create a <code>wp-config.php</code> file through a web interface, but this doesn't work for all server setups. The safest way is to manually create the file." ) . '</p>';
	$die .= '<p><a href="' . $path . '" class="button button-large">' . __( "Create a Configuration File" ) . '</a>';
	wp_die( $die, __( 'WordPress &rsaquo; Error' ) );

	?>
	</div>
	<?php 
}?>