<?php
/*
Plugin Name: Auto Generate Title
Author: Jatinder Pal Singh
Version: 1.1
Tags: post title, title, automatic, generator
Requires at least: 3.0.1
Tested up to: 4.1
Stable tag: 1.1
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html
Description: Auto Generate Title from the POST Content. If you leave Title blank, it will use the text written in [agt][/agt] within your post content. If you do not mention these shortcodes in your post, It will pick up first 30 characters from the post.
*/

add_shortcode("agt", "agt_shortcode");  
function agt_shortcode( $atts, $content = null ) {  
    return $content;  
} 

add_filter( 'wp_insert_post_data' , 'auto_generate_title' , '99', 2 );
function auto_generate_title( $data , $postarr ) 
{   
	$title_of_post = ltrim($data['post_title']);
	$length_of_title = strlen($title_of_post);
	$postdata = ltrim($data['post_content']);
	if($length_of_title<1)
	{
        if(get_post_type()=="materials"){
            $data['post_title']=$data['field_5a38e7c1e8d53'];
            $data['post_title'] .= $data['post_content'];
            //var_dump ($data);
            //print_r ($data);
        }else{
            $matchPattern = "/\[agt\](.*?)\[\/agt\]/";
            preg_match_all($matchPattern, $postdata, $foundIt, PREG_PATTERN_ORDER);
            if (isset($foundIt[1][0]))
                $data['post_title'] =  $foundIt[1][0];
            else
                $data['post_title'] = substr($postdata,0,30);
            }
	}
	return $data;
}	

?>
