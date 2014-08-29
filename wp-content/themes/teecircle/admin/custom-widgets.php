<?php
function teecircle_widgets_init() {
	register_sidebar( array(
		'name'          => 'Footer Widget Area 1',
		'id'            => 'tc-footer-widget-area1',
		'description'   => 'First footer column',
		'class'         => '',
		'before_widget' => '<div>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widgettitle">',
		'after_title'   => '</h2>' 
	) );
	register_sidebar( array(
		'name'          => 'Footer Widget Area 2',
		'id'            => 'tc-footer-widget-area2',
		'description'   => 'Second footer column',
		'class'         => '',
		'before_widget' => '<div>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widgettitle">',
		'after_title'   => '</h2>' 
	) );
	register_sidebar( array(
		'name'          => 'Footer Widget Area 3',
		'id'            => 'tc-footer-widget-area3',
		'description'   => 'Third footer column',
		'class'         => '',
		'before_widget' => '<div>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widgettitle">',
		'after_title'   => '</h2>' 
	) );
	register_sidebar( array(
		'name'          => 'Footer Widget Area 4',
		'id'            => 'tc-footer-widget-area4',
		'description'   => 'Fourth footer column',
		'class'         => '',
		'before_widget' => '<div>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widgettitle">',
		'after_title'   => '</h2>' 
	) );		
}
add_action( 'widgets_init', 'teecircle_widgets_init' );

register_nav_menu( 'header-main', 'Header Navigation Menu' );

?>