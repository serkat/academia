=== Auto Generate Title ===
Contributors: j_p_s
Author: Jatinder Pal Singh
Donate link: http://www.jpsays.com/
Tags: posts, title, post title, automatic, generator, creator, auto generator
Requires at least: 3.x
Tested up to: 4.1
Stable tag: 1.1
Version: 1.1
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Want to save time. Do not want to write TITLE manually.
This plugin is for you. No need to write the title. It will generate Post Title from your Post Content automatically

== Description ==

This plugin generates POST Title from POST content automatically. Sometimes, you forget to write the title or sometimes you don't want to write the title. It will generate the title for you. Or you can select a statement from your post content to be a title for the post using shortcodes [agt][/agt].

How does it work?
If you leave the title field empty, only then this plugin will work.
There are two different ways, this plugin works: - 
* Firstly it will search the content to check whether you have used [agt][/agt]shortcode or not. If used, it will make the wrapped line as title.
* If you haven't used shortcode in your post, it will automatically pick first 30 characters from the post and will use them as post title. 

Currently this plugin is tested with latest wordpress version 4.1, but it should work with other versions also.

== Installation ==


1. Download the Auto Generate Title plugin and extract the "agt" folder.
2. Upload `agt` folder to the `/wp-content/plugins/` directory
3. Activate the plugin through the 'Plugins' menu in WordPress
4. That's it. There is no further options page.

== Frequently Asked Questions ==

= How does this plugin work? =

This plugin firstly searches for shortcode wrapped line in the post content.
e.g.
This is the sample post. [agt]This line will be used as post title[/agt]. rest of the content will be unchanged. 

Here the post title will be: This line will be used as post title


== Screenshots ==
no screen shots

== Changelog ==

= 1.0 =
* Just developed for my own website www.theinbox.in