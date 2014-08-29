<?php
/**
 * Edit Posts Administration Screen.
 *
 * @package WordPress
 * @subpackage Administration
 */

/** WordPress Administration Bootstrap */
require_once( dirname( __FILE__ ) . '/admin.php' );

if ( ! $typenow )
	wp_die( __( 'Invalid post type' ) );

$post_type = $typenow;
$post_type_object = get_post_type_object( $post_type );

if ( ! $post_type_object )
	wp_die( __( 'Invalid post type' ) );

if ( ! current_user_can( $post_type_object->cap->edit_posts ) )
	wp_die( __( 'Cheatin&#8217; uh?' ) );

$wp_list_table = _get_list_table('WP_Posts_List_Table');
$pagenum = $wp_list_table->get_pagenum();

// Back-compat for viewing comments of an entry
foreach ( array( 'p', 'attachment_id', 'page_id' ) as $_redirect ) {
	if ( ! empty( $_REQUEST[ $_redirect ] ) ) {
		wp_redirect( admin_url( 'edit-comments.php?p=' . absint( $_REQUEST[ $_redirect ] ) ) );
		exit;
	}
}
unset( $_redirect );

if ( 'post' != $post_type ) {
	$parent_file = "edit.php?post_type=$post_type";
	$submenu_file = "edit.php?post_type=$post_type";
	$post_new_file = "post-new.php?post_type=$post_type";
} else {
	$parent_file = 'edit.php';
	$submenu_file = 'edit.php';
	$post_new_file = 'post-new.php';
}

$doaction = $wp_list_table->current_action();

if ( $doaction ) {
	check_admin_referer('bulk-posts');

	$sendback = remove_query_arg( array('trashed', 'untrashed', 'deleted', 'locked', 'ids'), wp_get_referer() );
	if ( ! $sendback )
		$sendback = admin_url( $parent_file );
	$sendback = add_query_arg( 'paged', $pagenum, $sendback );
	if ( strpos($sendback, 'post.php') !== false )
		$sendback = admin_url($post_new_file);

	if ( 'delete_all' == $doaction ) {
		$post_status = preg_replace('/[^a-z0-9_-]+/i', '', $_REQUEST['post_status']);
		if ( get_post_status_object($post_status) ) // Check the post status exists first
			$post_ids = $wpdb->get_col( $wpdb->prepare( "SELECT ID FROM $wpdb->posts WHERE post_type=%s AND post_status = %s", $post_type, $post_status ) );
		$doaction = 'delete';
	} elseif ( isset( $_REQUEST['media'] ) ) {
		$post_ids = $_REQUEST['media'];
	} elseif ( isset( $_REQUEST['ids'] ) ) {
		$post_ids = explode( ',', $_REQUEST['ids'] );
	} elseif ( !empty( $_REQUEST['post'] ) ) {
		$post_ids = array_map('intval', $_REQUEST['post']);
	}

	if ( !isset( $post_ids ) ) {
		wp_redirect( $sendback );
		exit;
	}

	switch ( $doaction ) {
		case 'trash':
			$trashed = $locked = 0;

			foreach( (array) $post_ids as $post_id ) {
				if ( !current_user_can( 'delete_post', $post_id) )
					wp_die( __('You are not allowed to move this item to the Trash.') );

				if ( wp_check_post_lock( $post_id ) ) {
					$locked++;
					continue;
				}

				if ( !wp_trash_post($post_id) )
					wp_die( __('Error in moving to Trash.') );

				$trashed++;
			}

			$sendback = add_query_arg( array('trashed' => $trashed, 'ids' => join(',', $post_ids), 'locked' => $locked ), $sendback );
			break;
		case 'untrash':
			$untrashed = 0;
			foreach( (array) $post_ids as $post_id ) {
				if ( !current_user_can( 'delete_post', $post_id) )
					wp_die( __('You are not allowed to restore this item from the Trash.') );

				if ( !wp_untrash_post($post_id) )
					wp_die( __('Error in restoring from Trash.') );

				$untrashed++;
			}
			$sendback = add_query_arg('untrashed', $untrashed, $sendback);
			break;
		case 'delete':
			$deleted = 0;
			foreach( (array) $post_ids as $post_id ) {
				$post_del = get_post($post_id);

				if ( !current_user_can( 'delete_post', $post_id ) )
					wp_die( __('You are not allowed to delete this item.') );

				if ( $post_del->post_type == 'attachment' ) {
					if ( ! wp_delete_attachment($post_id) )
						wp_die( __('Error in deleting.') );
				} else {
					if ( !wp_delete_post($post_id) )
						wp_die( __('Error in deleting.') );
				}
				$deleted++;
			}
			$sendback = add_query_arg('deleted', $deleted, $sendback);
			break;
		case 'edit':
			if ( isset($_REQUEST['bulk_edit']) ) {
				$done = bulk_edit_posts($_REQUEST);

				if ( is_array($done) ) {
					$done['updated'] = count( $done['updated'] );
					$done['skipped'] = count( $done['skipped'] );
					$done['locked'] = count( $done['locked'] );
					$sendback = add_query_arg( $done, $sendback );
				}
			}
			break;
	}

	$sendback = remove_query_arg( array('action', 'action2', 'tags_input', 'post_author', 'comment_status', 'ping_status', '_status', 'post', 'bulk_edit', 'post_view'), $sendback );

	wp_redirect($sendback);
	exit();
} elseif ( ! empty($_REQUEST['_wp_http_referer']) ) {
	 wp_redirect( remove_query_arg( array('_wp_http_referer', '_wpnonce'), wp_unslash($_SERVER['REQUEST_URI']) ) );
	 exit;
}

$wp_list_table->prepare_items();

wp_enqueue_script('inline-edit-post');

$title = $post_type_object->labels->name;

if ( 'post' == $post_type ) {
	get_current_screen()->add_help_tab( array(
	'id'		=> 'overview',
	'title'		=> __('Overview'),
	'content'	=>
		'<p>' . __('This screen provides access to all of your posts. You can customize the display of this screen to suit your workflow.') . '</p>'
	) );
	get_current_screen()->add_help_tab( array(
	'id'		=> 'screen-content',
	'title'		=> __('Screen Content'),
	'content'	=>
		'<p>' . __('You can customize the display of this screen&#8217;s contents in a number of ways:') . '</p>' .
		'<ul>' .
			'<li>' . __('You can hide/display columns based on your needs and decide how many posts to list per screen using the Screen Options tab.') . '</li>' .
			'<li>' . __('You can filter the list of posts by post status using the text links in the upper left to show All, Published, Draft, or Trashed posts. The default view is to show all posts.') . '</li>' .
			'<li>' . __('You can view posts in a simple title list or with an excerpt. Choose the view you prefer by clicking on the icons at the top of the list on the right.') . '</li>' .
			'<li>' . __('You can refine the list to show only posts in a specific category or from a specific month by using the dropdown menus above the posts list. Click the Filter button after making your selection. You also can refine the list by clicking on the post author, category or tag in the posts list.') . '</li>' .
		'</ul>'
	) );
	get_current_screen()->add_help_tab( array(
	'id'		=> 'action-links',
	'title'		=> __('Available Actions'),
	'content'	=>
		'<p>' . __('Hovering over a row in the posts list will display action links that allow you to manage your post. You can perform the following actions:') . '</p>' .
		'<ul>' .
			'<li>' . __('<strong>Edit</strong> takes you to the editing screen for that post. You can also reach that screen by clicking on the post title.') . '</li>' .
			'<li>' . __('<strong>Quick Edit</strong> provides inline access to the metadata of your post, allowing you to update post details without leaving this screen.') . '</li>' .
			'<li>' . __('<strong>Trash</strong> removes your post from this list and places it in the trash, from which you can permanently delete it.') . '</li>' .
			'<li>' . __('<strong>Preview</strong> will show you what your draft post will look like if you publish it. View will take you to your live site to view the post. Which link is available depends on your post&#8217;s status.') . '</li>' .
		'</ul>'
	) );
	get_current_screen()->add_help_tab( array(
	'id'		=> 'bulk-actions',
	'title'		=> __('Bulk Actions'),
	'content'	=>
		'<p>' . __('You can also edit or move multiple posts to the trash at once. Select the posts you want to act on using the checkboxes, then select the action you want to take from the Bulk Actions menu and click Apply.') . '</p>' .
				'<p>' . __('When using Bulk Edit, you can change the metadata (categories, author, etc.) for all selected posts at once. To remove a post from the grouping, just click the x next to its name in the Bulk Edit area that appears.') . '</p>'
	) );

	get_current_screen()->set_help_sidebar(
	'<p><strong>' . __('For more information:') . '</strong></p>' .
	'<p>' . __('<a href="http://codex.wordpress.org/Posts_Screen" target="_blank">Documentation on Managing Posts</a>') . '</p>' .
	'<p>' . __('<a href="http://wordpress.org/support/" target="_blank">Support Forums</a>') . '</p>'
	);

} elseif ( 'page' == $post_type ) {
	get_current_screen()->add_help_tab( array(
	'id'		=> 'overview',
	'title'		=> __('Overview'),
	'content'	=>
		'<p>' . __('Pages are similar to posts in that they have a title, body text, and associated metadata, but they are different in that they are not part of the chronological blog stream, kind of like permanent posts. Pages are not categorized or tagged, but can have a hierarchy. You can nest pages under other pages by making one the &#8220;Parent&#8221; of the other, creating a group of pages.') . '</p>'
	) );
	get_current_screen()->add_help_tab( array(
	'id'		=> 'managing-pages',
	'title'		=> __('Managing Pages'),
	'content'	=>
		'<p>' . __('Managing pages is very similar to managing posts, and the screens can be customized in the same way.') . '</p>' .
		'<p>' . __('You can also perform the same types of actions, including narrowing the list by using the filters, acting on a page using the action links that appear when you hover over a row, or using the Bulk Actions menu to edit the metadata for multiple pages at once.') . '</p>'
	) );

	get_current_screen()->set_help_sidebar(
	'<p><strong>' . __('For more information:') . '</strong></p>' .
	'<p>' . __('<a href="http://codex.wordpress.org/Pages_Screen" target="_blank">Documentation on Managing Pages</a>') . '</p>' .
	'<p>' . __('<a href="http://wordpress.org/support/" target="_blank">Support Forums</a>') . '</p>'
	);
}

add_screen_option( 'per_page', array( 'label' => $title, 'default' => 20, 'option' => 'edit_' . $post_type . '_per_page' ) );

$bulk_counts = array(
	'updated'   => isset( $_REQUEST['updated'] )   ? absint( $_REQUEST['updated'] )   : 0,
	'locked'    => isset( $_REQUEST['locked'] )    ? absint( $_REQUEST['locked'] )    : 0,
	'deleted'   => isset( $_REQUEST['deleted'] )   ? absint( $_REQUEST['deleted'] )   : 0,
	'trashed'   => isset( $_REQUEST['trashed'] )   ? absint( $_REQUEST['trashed'] )   : 0,
	'untrashed' => isset( $_REQUEST['untrashed'] ) ? absint( $_REQUEST['untrashed'] ) : 0,
);

$bulk_messages = array();
$bulk_messages['post'] = array(
	'updated'   => _n( '%s post updated.', '%s posts updated.', $bulk_counts['updated'] ),
	'locked'    => _n( '%s post not updated, somebody is editing it.', '%s posts not updated, somebody is editing them.', $bulk_counts['locked'] ),
	'deleted'   => _n( '%s post permanently deleted.', '%s posts permanently deleted.', $bulk_counts['deleted'] ),
	'trashed'   => _n( '%s post moved to the Trash.', '%s posts moved to the Trash.', $bulk_counts['trashed'] ),
	'untrashed' => _n( '%s post restored from the Trash.', '%s posts restored from the Trash.', $bulk_counts['untrashed'] ),
);
$bulk_messages['page'] = array(
	'updated'   => _n( '%s page updated.', '%s pages updated.', $bulk_counts['updated'] ),
	'locked'    => _n( '%s page not updated, somebody is editing it.', '%s pages not updated, somebody is editing them.', $bulk_counts['locked'] ),
	'deleted'   => _n( '%s page permanently deleted.', '%s pages permanently deleted.', $bulk_counts['deleted'] ),
	'trashed'   => _n( '%s page moved to the Trash.', '%s pages moved to the Trash.', $bulk_counts['trashed'] ),
	'untrashed' => _n( '%s page restored from the Trash.', '%s pages restored from the Trash.', $bulk_counts['untrashed'] ),
);

/**
 * Filter the bulk action updated messages.
 *
 * By default, custom post types use the messages for the 'post' post type.
 *
 * @since 3.7.0
 *
 * @param array $bulk_messages Arrays of messages, each keyed by the corresponding post type. Messages are
 *                             keyed with 'updated', 'locked', 'deleted', 'trashed', and 'untrashed'.
 * @param array $bulk_counts   Array of item counts for each message, used to build internationalized strings.
 */
$bulk_messages = apply_filters( 'bulk_post_updated_messages', $bulk_messages, $bulk_counts );
$bulk_counts = array_filter( $bulk_counts );

require_once( ABSPATH . 'wp-admin/admin-header.php' );
?>

<style>
  /*-----------------------Palash 15.4.14*/
  #get_paid .shop_table{border:1px solid #cccccc;}
  #get_paid .shop_table tbody tr.dtevOuter{background:#cccccc; display:inline-block;}  
  #get_paid .shop_table tbody tr.dtevOuter th{padding-top:8px; padding-bottom:8px; display:inline-block;}
  #get_paid .shop_table tbody tr .dt, #get_paid .shop_table tbody tr .ev{width:946px; display:inline-block; background:#dddddd; border-bottom:1px solid #cccccc; text-align:left; padding-left:20px;}
  #get_paid .shop_table tbody tr .dt{width:150px;}
  #get_paid .shop_table tbody tr .order-actions{display:none !important;}
  #get_paid .shop_table tbody tr .order-date, #get_paid .shop_table tbody tr .order-status{width:150px; display:inline-block; text-align:left; padding-left:20px;}  
  #get_paid .shop_table tbody tr .order-status{width:946px;}
  #get_paid .shop_table tbody tr .order-status a{font-size:13px; text-decoration:none;}
  #get_paid .shop_table tbody tr.order{padding:4px 0; border-top:1px solid #dddddd; display:inline-block; background:#dddddd; padding:0;}
  #get_paid .shop_table tbody tr.order:first-child{border-top:0;}
  #get_paid .shop_table tbody tr.order td{padding-top:8px; padding-bottom:8px;}
  #get_paid .shop_table tbody tr.order td.order-date{padding-bottom:9px;}
  #get_paid .shop_table tbody tr.order:nth-child(odd) td{background:#fff;}
  #get_paid .shop_table tbody tr.order:nth-child(even) td{background:#f7f7f7;}
</style>

<div class="wrap">
<h2><?php
echo esc_html( $post_type_object->labels->name );
if ( current_user_can( $post_type_object->cap->create_posts ) )
	echo ' <a href="' . esc_url( admin_url( $post_new_file ) ) . '" class="add-new-h2">' . esc_html( $post_type_object->labels->add_new ) . '</a>';
if ( ! empty( $_REQUEST['s'] ) )
	printf( ' <span class="subtitle">' . __('Search results for &#8220;%s&#8221;') . '</span>', get_search_query() );
?></h2>

<?php
// If we have a bulk message to issue:
$messages = array();
foreach ( $bulk_counts as $message => $count ) {
	if ( isset( $bulk_messages[ $post_type ][ $message ] ) )
		$messages[] = sprintf( $bulk_messages[ $post_type ][ $message ], number_format_i18n( $count ) );
	elseif ( isset( $bulk_messages['post'][ $message ] ) )
		$messages[] = sprintf( $bulk_messages['post'][ $message ], number_format_i18n( $count ) );

	if ( $message == 'trashed' && isset( $_REQUEST['ids'] ) ) {
		$ids = preg_replace( '/[^0-9,]/', '', $_REQUEST['ids'] );
		$messages[] = '<a href="' . esc_url( wp_nonce_url( "edit.php?post_type=$post_type&doaction=undo&action=untrash&ids=$ids", "bulk-posts" ) ) . '">' . __('Undo') . '</a>';
	}
}

if ( $messages )
	echo '<div id="message" class="updated"><p>' . join( ' ', $messages ) . '</p></div>';
unset( $messages );

$_SERVER['REQUEST_URI'] = remove_query_arg( array( 'locked', 'skipped', 'updated', 'deleted', 'trashed', 'untrashed' ), $_SERVER['REQUEST_URI'] );
?>

<?php $wp_list_table->views(); ?>

<form id="posts-filter" action="" method="get">

<?php $wp_list_table->search_box( $post_type_object->labels->search_items, 'post' ); ?>

<input type="hidden" name="post_status" class="post_status_page" value="<?php echo !empty($_REQUEST['post_status']) ? esc_attr($_REQUEST['post_status']) : 'all'; ?>" />
<input type="hidden" name="post_type" class="post_type_page" value="<?php echo $post_type; ?>" />
<?php if ( ! empty( $_REQUEST['show_sticky'] ) ) { ?>
<input type="hidden" name="show_sticky" value="1" />
<?php } ?>

<?php if(isset($post_type) && !empty($post_type) && ($post_type=='campaign')){
	?>
<!--Get Paid Section Starts Here-->
<div style="clear: both;"></div>
<div class="content getpadisdf" id="get_paid"> 
<?php /*echo '<pre>';print_r($orproduct_pro);*/
$pronvalsoneval = $wpdb->get_results("SELECT c.order_id,a.meta_value as product_id,b.meta_value as tot_prod_qty,e.meta_value as subtotal from wp_woocommerce_order_itemmeta as a, wp_woocommerce_order_itemmeta as b, wp_woocommerce_order_items as c, wp_term_relationships as d, wp_woocommerce_order_itemmeta as e  WHERE a.meta_key='_product_id' AND a.order_item_id=b.order_item_id AND b.meta_key='_qty' AND a.order_item_id=e.order_item_id AND e.meta_key='_line_subtotal' AND c.order_item_id=a.order_item_id AND c.order_id=d.object_id AND d.term_taxonomy_id=10");
//echo '<pre>';
$pronvalsone =array();
$f=0;
foreach($pronvalsoneval as $key => $orproductproq){
$pronvalsone[$orproductproq->product_id]['product_id'] = $orproductproq->product_id;
$pronvalsone[$orproductproq->product_id]['tot_prod_qty'] = $pronvalsone[$orproductproq->product_id]['tot_prod_qty'] + $orproductproq->tot_prod_qty;
$pronvalsone[$orproductproq->product_id]['subtotal'] = $pronvalsone[$orproductproq->product_id]['subtotal'] + $orproductproq->subtotal;
$f++;
}
//print_r($pronvalsone);
$pronval = $wpdb->get_results("SELECT DISTINCT wpm.post_id,wp.post_title,wpm1.meta_value as stock,wpm.meta_value as enddate from wp_postmeta as wpm,wp_postmeta as wpm1,wp_postmeta as wpm2,wp_posts as wp WHERE ((wpm.meta_key='_campain_valid_to' AND wpm.meta_value<".time().")) AND wp.ID = wpm.post_id AND wp.ID = wpm2.post_id AND wpm1.meta_key='_stock' AND  wpm1.post_id=wp.ID");//OR (wpm2.meta_key='_early_end' AND wpm2.meta_value='yes'))
//echo '<pre>';
//print_r($pronval );
$getpagarr = array();
foreach($pronval as $orproductpro){
	$getpagarr[$orproductpro->post_id]['stock'] = $orproductpro->stock;
	$getpagarr[$orproductpro->post_id]['endate'] = $orproductpro->enddate;
	$getpagarr[$orproductpro->post_id]['post_title'] = $orproductpro->post_title;
}
$pagearray = array();
$b=0;
$totamt = 0;
$payoff = array();
foreach($pronvalsone as $key => $orproductproq){echo $orproductproq->tot_prod_qty;
	if(isset($getpagarr[$orproductproq['product_id']]['stock']) && !empty($getpagarr[$orproductproq['product_id']]['stock']) && ($orproductproq['tot_prod_qty']>=$getpagarr[$orproductproq['product_id']]['stock']) ){//echo $orproductproq['product_id'];
		$pagearray[$getpagarr[$orproductproq['product_id']]['endate']]['date'] = date( 'm/d/y', $getpagarr[$orproductproq['product_id']]['endate']  );
		$pagearray[$getpagarr[$orproductproq['product_id']]['endate']]['post_title'] = $getpagarr[$orproductproq['product_id']]['post_title'];
		$pagearray[$getpagarr[$orproductproq['product_id']]['endate']]['amount'] = '+$'.$orproductproq['subtotal'];
		$pagearray[$getpagarr[$orproductproq['product_id']]['endate']]['stock'] = $orproductproq['tot_prod_qty'];
		$pagearray[$getpagarr[$orproductproq['product_id']]['endate']]['type'] = 'order';
		$pagearray[$getpagarr[$orproductproq['product_id']]['endate']]['product_id'] = $orproductproq['product_id'];
		//$pronvalkey = mysql_fetch_array(mysql_query("SELECT post_id from wp_payoff where post_id=".$orproductproq['product_id']));
		//print_r($pronvalkey);
		/*if(!isset($pronvalkey['post_id'])){
			$totamt = $totamt+$orproductproq['subtotal'];
			$payoff[] = $orproductproq['product_id'];
		}*/
	}
	
	
$b++;}


$payoffstr = implode(',',$payoff);
//echo $totamt;
//print_r($pagearray);
if(isset($_GET['id']) && !empty($_GET['id'])){
	$queryval_ordid=$wpdb->get_results("select order_item_id from wp_woocommerce_order_itemmeta where meta_key='_product_id' and meta_value=".$_GET['id']);?>
	<table class="shop_table my_account_orders">
	<tr>
		<th class="order-number"><span class="nobr">Style</span></th>
		<th class="order-number"><span class="nobr">Size</span></th>
		<th class="order-number"><span class="nobr">Qty</span></th>
		<th class="order-number"><span class="nobr">Image</span></th>
	</tr>
	<?php 
	
	foreach($queryval_ordid as $queryvalordid){
		$queryval_ordidval=$wpdb->get_results("select * from wp_woocommerce_order_itemmeta where order_item_id=".$queryvalordid->order_item_id);
		//echo "select meta_value from wp_postmeta where meta_key='_manage_pic' and post_id=".$queryval_ordidval[3]->meta_value;
		$queryval=$wpdb->get_results("select meta_value from wp_postmeta where meta_key='_manage_pic' and post_id=".$queryval_ordidval[3]->meta_value);
		//echo '<pre>';
		
		//print_r($queryval_ordidval);?>
	<tr>
		<td class="order-number"><?php echo $queryval_ordidval[9]->meta_value;?></td>
		<td class="order-number"><?php echo $queryval_ordidval[8]->meta_value;?></td>
		<td class="order-number"><?php echo $queryval_ordidval[0]->meta_value;?></td>
		<td class="order-number"><div class="fade pro_fade" style="display: none;" id="prod_img_in_lb<?php echo $queryval_ordidval[2]->meta_value;?>">
							<div class="login" style="display: block;">
								<div class="crsIcn" style="display: block;"><a href="javascript:login_close(<?php echo $queryval_ordidval[2]->meta_value;?>);">x</a></div>
								<div style="display: block;" id="loaderdiv" class="rgstrFrm">
									<div style='position:relative;' class='dsgnCen notindesign'>
									<?php 
										echo stripcslashes(stripcslashes($queryval[0]->meta_value));
									?>
									</div>
								</div>
							</div>
						</div><a href='javascript: void(0)' onclick='login_now(<?php echo $queryval_ordidval[2]->meta_value;?>)'>View Image</a></td>
	</tr>
	<?php 
		//echo $queryvalordid->order_item_id;
		//echo "select * from wp_woocommerce_order_itemmeta where order_item_id=".$queryvalordid->order_item_id;
		
	}
	//print_r($queryval_ordid);
	//print_r($pronvalsoneval);
	?>
	<script type="text/javascript">
	function login_now(p){
		document.getElementById("prod_img_in_lb"+p).style.display='block';
	}
	function login_close(p){//alert(document.getElementsByClassName("fade").style.display);
		document.getElementById("prod_img_in_lb"+p).style.display='none';
	}

</script>
<link type="text/css" rel="stylesheet" href="<?php echo bloginfo ('url');?>/wp-content/themes/teecircle/css/style_admin.css">

						
						<?php }else{
if(count($pagearray)>0){
	/*echo '<pre>';
	print_r($getpagarr);*/?>
	<table class="shop_table my_account_orders">
	<tr class="dtevOuter">
		<th class="order-number dt"><span class="nobr">Date</span></th>
		<th class="order-number ev"><span class="nobr">Event</span></th>
		<!--<th class="order-number"><span class="nobr">Amount</span></th>-->
		<th class="order-actions">&nbsp;</th>
	</tr>
	<?php 
	krsort($pagearray);
	foreach($pagearray as $key => $orproductproqc){?>
	<tr  class="order">
			<td class="order-date"><?php echo $orproductproqc['date']; ?></td>
			<td class="order-status" style="text-align:left; white-space:nowrap;"><span style="color:blue;font-size: 16px;"><a href="<?php echo get_site_url();?>/teewp-admincircle/edit.php?post_type=campaign&id=<?php echo $orproductproqc['product_id'];?>"><?php echo $orproductproqc['post_title']; ?></span></<a> <?php if($orproductproqc['type']=='payoff'){echo ':: ';if($orproductproqc['stock']=='draft'){echo 'Pending';}else{echo 'Completed';}}else{?>endded successfully (<?php echo $orproductproqc['stock']; ?> shirt<?php if($orproductproqc['stock']>1){echo 's';}else{}?> sold)<?php }?></td>
			<!--<td class="order-total"><?php echo $orproductproqc['amount']; ?> </td>-->
		</tr>
		<?php 
	}?>
	</table>
	<?php 
}else{?>
	<span style="color: #c09853;"> Do not have any campaign </span>
<?php }}
?>
	
</div>
<!--Get Paid Section Ends Here-->
<?php }else{$wp_list_table->display();} ?>

</form>

<?php
if ( $wp_list_table->has_items() )
	$wp_list_table->inline_edit();
?>

<div id="ajax-response"></div>
<br class="clear" />
</div>

<?php
include( ABSPATH . 'wp-admin/admin-footer.php' );
