<?php
ob_start();
session_start();
require_once("../../../wp-load.php");
/*echo '<pre>';
print_r($_POST);print_r($_SESSION);
echo '</pre>';*/ 
/*echo"<pre>";
var_dump($_SESSION);
echo"</pre>"; 
die();*/
if(isset($_SESSION['post_id'])&&!empty($_SESSION['post_id'])){
	$post_id=$_SESSION['post_id'];
	//die();
	//echo $post_id;
	//die();
}/*else{
	die("Unknown Post ID");
}*/
$uploadpath =  wp_upload_dir();
$_POST['uid'] = get_current_user_id( );
$cat_array=array();
$cat_array[] = $_SESSION['style_na'];
$styelnam = mysql_fetch_array(mysql_query("select slug from `".$wpdb->prefix."terms` where `term_id`='".$_SESSION['style_na']."'"));
/*print_r($styelnam);echo $styelnam['slug'];die();*/
$sytlearr = array();
array_push($sytlearr,$styelnam['slug']);
for($g=0;$g<count($_POST['prostye']);$g++){
	array_push($sytlearr,$_POST['prostye'][$g]);
} 
//print_r($sytlearr);die();
?>
<?php 
$slug=str_replace(' ','-',$_POST['choose_url']);
$post = array(
  'ID' => $post_id,
  'post_content'   => $_POST['description'],
  'post_name'      => $slug,
  'post_title'     => $_POST['campain_title'],
  'post_modified'      => date('Y-m-d H:i:s'),
  'post_modified_gmt'  => date('Y-m-d H:i:s'),
  'post_parent'    => $_SESSION['proid'],
  'post_status'    => 'draft',
  'post_category'  => $cat_array
);  

wp_update_post( $post ); 

$lastid = $post_id;

 /*mysql_query("update `".$wpdb->prefix."term_relationships` set `term_taxonomy_id`='".$_SESSION['style_na']."' where `object_id`='".$lastid."'");*/
if($_REQUEST['shipping_options']=='yes'){
	 	$shippingval_old = 66;
			$shippingval = 64;
		}else{
			$shippingval_old = 64;
			$shippingval = 66;
		}
		/*echo $shippingval;
		die();*/
		mysql_query("update `".$wpdb->prefix."term_relationships` set `term_taxonomy_id`=".$shippingval." where `object_id`='".$fetch_id."' and `term_taxonomy_id`=".$shippingval_old);
//foreach($cat_array as $cat){
//mysql_query("insert into `".$wpdb->prefix."term_relationships` set `object_id`='".$lastid."', `term_taxonomy_id`='".$_SESSION['style_na']."'");
//}
update_post_meta( $lastid, '_stock', $_POST['amount']); 
update_post_meta( $lastid, '_manage_pic', $_SESSION['design'] ); 
update_post_meta( $lastid, '_profit_per_pro', $_POST['profamt'] );
update_post_meta( $lastid, '_campain_valid_from', time() );  
update_post_meta( $lastid, '_campain_valid_to', $_POST['campain_length'] );  
update_post_meta( $lastid, '_shipping_option',  $_POST['shipping_options'] );   
update_post_meta( $lastid, '_edit_lock', time().':1' );  
update_post_meta( $lastid, '_edit_last', 1 );       
update_post_meta( $lastid, '_regular_price',str_replace('$','',$_POST['amountset']) ); 
update_post_meta( $lastid, 'front_print_area', $_SESSION['front_print_area'] ); 
update_post_meta( $lastid, 'back_print_area', $_SESSION['back_print_area'] );
delete_post_meta( $lastid, '_early_end');

wp_set_object_terms( $lastid, $sytlearr, 'pa_style' );

//get the variation of present product
$q=mysql_query("select ID from wp_posts where post_parent=".$post_id." and post_status='publish'");
while($qrow = mysql_fetch_array($q)){
	mysql_query("update wp_posts set post_status='trash' where ID=".$qrow['ID']);
}
$postvsf = array(
  'post_name'      => 'product-'.$lastid.'-variation-'.$styelnam['slug'],
  'post_title'     => 'product-'.$lastid.'-variation-'.$styelnam['slug'],
  'post_status'    => 'publish',
  'post_type'      => 'product_variation',
  'post_author'    => $_POST['uid'],
  'ping_status'    => 'open',
  'post_parent'    => $lastid,
  'menu_order'     => 0,
  'to_ping'        => '',
  'pinged'         => '',
  'post_password'  => '',
  'guid'           => '',
  'post_content_filtered' => '',
  'post_excerpt'   => '',
  'post_date'      => date('Y-m-d H:i:s'),
  'post_date_gmt'  => date('Y-m-d H:i:s'),
  'comment_status' => 'closed',
  'tags_input'     => '',
  'tax_input'      => '',
  'page_template'  => ''
);  

wp_insert_post( $postvsf );
$lastidvsf = $wpdb->insert_id;
add_post_meta( $lastidvsf, '_regular_price', str_replace('$','',$_POST['amountset']) );
add_post_meta( $lastidvsf, '_price', str_replace('$','',$_POST['amountset']) );
add_post_meta( $lastidvsf, '_stock', $_POST['amount'] );
add_post_meta( $lastidvsf, 'attribute_pa_size', '' );
add_post_meta( $lastidvsf, 'attribute_pa_style', $styelnam['slug'] );
add_post_meta( $lastidvsf, '_manage_pic', $_SESSION['design'] ); 
add_post_meta( $lastidvsf, 'product_parent_id', $_SESSION['proid'] ); 
 if(count($_POST['prostye'])>0){
for($g=0;$g<count($_POST['prostye']);$g++){
	$postvs = array(
  'post_name'      => 'product-'.$lastid.'-variation-'.$_POST['prostye'][$g],
  'post_title'     => 'product-'.$lastid.'-variation-'.$_POST['prostye'][$g],
  'post_status'    => 'publish',
  'post_type'      => 'product_variation',
  'post_author'    => $_POST['uid'],
  'ping_status'    => 'open',
  'post_parent'    => $lastid,
  'menu_order'     => 0,
  'to_ping'        => '',
  'pinged'         => '',
  'post_password'  => '',
  'guid'           => '',
  'post_content_filtered' => '',
  'post_excerpt'   => '',
  'post_date'      => date('Y-m-d H:i:s'),
  'post_date_gmt'  => date('Y-m-d H:i:s'),
  'comment_status' => 'closed',
  'tags_input'     => '',
  'tax_input'      => '',
  'page_template'  => ''
);  

wp_insert_post( $postvs );
$lastidvs = $wpdb->insert_id;
$imhfn = array();
 $args = array(
   'post_type' => 'attachment',
   'numberposts' => 2,
   'post_status' => null,
   'post_parent' => $_POST['proidval'][$g]
  );
$qyvbh = mysql_fetch_array(mysql_query("SELECT 
	wppm1.meta_value as front_print_area_height,
	wppm2.meta_value as front_print_area_width,
	wppm3.meta_value as front_print_area_top,
	wppm4.meta_value as front_print_area_left,
	wppm5.meta_value as back_print_area_height,
	wppm6.meta_value as back_print_area_width,
	wppm7.meta_value as back_print_area_top,
	wppm8.meta_value as back_print_area_left 
	FROM 
	`wp_postmeta` as wppm1,
	`wp_postmeta` as wppm2,
	`wp_postmeta` as wppm3,
	`wp_postmeta` as wppm4,
	`wp_postmeta` as wppm5,
	`wp_postmeta` as wppm6,
	`wp_postmeta` as wppm7,
	`wp_postmeta` as wppm8 
	WHERE 
	wppm1.`meta_key`='front_print_area_height' AND wppm1.post_id=".$_POST['proidval'][$g]." AND 
	wppm2.`meta_key`='front_print_area_width' AND wppm2.post_id=".$_POST['proidval'][$g]." AND 
	wppm3.`meta_key`='front_print_area_top' AND wppm3.post_id=".$_POST['proidval'][$g]." AND 
	wppm4.`meta_key`='front_print_area_left' AND wppm4.post_id=".$_POST['proidval'][$g]." AND 
	wppm5.`meta_key`='back_print_area_height' AND wppm5.post_id=".$_POST['proidval'][$g]." AND 
	wppm6.`meta_key`='back_print_area_width' AND wppm6.post_id=".$_POST['proidval'][$g]." AND 
	wppm7.`meta_key`='back_print_area_top' AND wppm7.post_id=".$_POST['proidval'][$g]." AND 
	wppm8.`meta_key`='back_print_area_left' AND wppm8.post_id=".$_POST['proidval'][$g]));
  $attachments = get_posts( $args );
     if ( $attachments ) {
	 	$metaimg = '';
	 	//$attachments = array_reverse($attachments);
		$h=0;
        foreach ( $attachments as $attachment ) {
			$qy = mysql_fetch_array(mysql_query("SELECT wppm.meta_value FROM `wp_postmeta` as wppm WHERE wppm.`meta_key`='_wp_attached_file' AND wppm.post_id=".$attachment->ID));
			if($h==0){
				$metaimg .= '<div id="dv_front">
          <img id="bg_img" src="'.$uploadpath["baseurl"].'/'.$qy['meta_value'].'"> <img style="display: none;" id="bg_imgcan" src="'.$uploadpath["baseurl"].'/'.$qy['meta_value'].'">
		  <div class="front_print_area" id="text_container" style="height: '.$qyvbh['front_print_area_height'].'px; width: '.$qyvbh['front_print_area_width'].'px; top: '.$qyvbh['front_print_area_top'].'px; left: '.$qyvbh['front_print_area_left'].'px;">'.$_SESSION['front_print_area'].'</div>
		  <div style="clear: both"></div>
		  
          <div class="seeBack"><a id="id-seeBack" href="javascript:void(0)"><img alt="" src="'. get_template_directory_uri().'/images/seeback.png"></a></div>
          
		</div>';
			}
			if($h==1){
				$metaimg .= '<div style="display: none;" id="dv_back">
          <img id="bg_img1" src="'.$uploadpath["baseurl"].'/'.$qy['meta_value'].'"> <img style="display: none;" id="bg_imgcan1" src="'.$uploadpath["baseurl"].'/'.$qy['meta_value'].'">
		  <div class="back_print_area" id="text_container" style="height: '.$qyvbh['back_print_area_height'].'px; width: '.$qyvbh['back_print_area_width'].'px; top: '.$qyvbh['back_print_area_top'].'px; left: '.$qyvbh['back_print_area_left'].'px;">'.$_SESSION['back_print_area'].'</div>
		  
          <div class="seeBack">
		  <a id="id-seeFront" href="javascript:void(0)"><img alt="" src="'. get_template_directory_uri().'/images/seefront.png"></a></div></div>';
				}
          $h++;}
     }
add_post_meta( $lastidvs, '_regular_price', $_POST['propric'][$g] );
add_post_meta( $lastidvs, '_price', $_POST['propric'][$g] );
add_post_meta( $lastidvs, '_stock', $_POST['amount'] );
add_post_meta( $lastidvs, 'attribute_pa_size', '' );
add_post_meta( $lastidvs, 'attribute_pa_style', $_POST['prostye'][$g] );
add_post_meta( $lastidvs, '_manage_pic', $metaimg ); 
add_post_meta( $lastidvs, 'product_parent_id', $_POST['proidval'][$g] ); 
}
}?> 
<?php 
$_SESSION['base_q'] = $_POST['amount'];
$_SESSION['proprice'] = str_replace('$','',$_POST['amountset'])-$_SESSION['profitv'];
$_SESSION['post_title']=$_POST['campain_title'];
$_SESSION['post_content']=$_POST['description'];
$_SESSION['_campain_valid_from'] = time();
$_SESSION['_campain_valid_to'] = $_POST['campain_length'];
$_SESSION['post_name'] = $slug;
$_SESSION['_shipping_option'] = $_POST['shipping_options'];
$_SESSION['prostye'] = $_POST['prostye']; ?>