<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
    <head>
        <meta charset="<?php bloginfo('charset'); ?>">
        <meta name="viewport" content="width=device-width">
        <link rel="profile" href="http://gmpg.org/xfn/11">
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
        <!--[if lt IE 9]>
        <script src="<?php echo esc_url(get_template_directory_uri()); ?>/js/html5.js"></script>
        <![endif]-->
        <?php wp_head(); ?>
    </head>
    <?php
        $body_class = '';
        $main_class = '';
        if(is_front_page() || is_home()) {
            $body_class = 'bd-home-page';
            $main_class = 'mn-home-page';
        } else {
            $main_class = 'mn-default-page';
            switch(get_query_var('pagename')) {
                case 'sectors': case 'gallery': case 'faqs': case 'contact':
                    $body_class = 'bd-custom-page';
                    break;
                default:
                    $body_class = 'bd-default-page';
                    break;
            }
        }
    ?>
    <?php if(has_post_thumbnail()) { $feature_image_meta = wp_get_attachment_url(get_post_thumbnail_id($page->ID)); } ?>
    <body <?php body_class($body_class); ?>>
        <div class="dv-document-wrapper" style="background-image: url('<?php echo (!empty($feature_image_meta)) ? $feature_image_meta : get_bloginfo('template_directory') . '/images/default_background.jpg'; ?>');">
            <header id="hdr_header_content" class="hdr-header-content">
                <div class="row">
                    <div class="col-xs-3">
                        <a href="<?php echo esc_url(home_url('/')); ?>" rel="home" title="Home">
                            <img src="<?php echo get_bloginfo('template_directory'); ?>/images/header_logo.png" id="img_logo" class="img-logo" style="width: 100%; height: auto;"/>
                        </a>
                    </div>
                    <div class="col-xs-9">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav">
                                        <?php wp_nav_menu(array(
                                            'theme_location'    =>  'primary',
                                            'menu'              =>  'primary',
                                            'depth'             =>  2,
                                            'container'         =>  false,
                                            'menu_class'        =>  'nav navbar-nav',
                                            'walker'            =>  new wp_bootstrap_navwalker()
                                        )); ?>
                                    </ul>
                                </div>

                            </div>
                        </nav>
                    </div>
                </div>
            </header>
            <?php if(is_front_page() || is_home()) { ?>
                <section id="sct_home_panel" class="sct-home-panel">
                    <div class="dv-home-panel-top">
                        <?php $home_panel_menu = wp_nav_menu(array(
                            'theme_location'    =>    'home_top',
                            'menu'              =>    'home_top',
                            'container'         =>    'div',
                            'container_class'   =>    'row',
                            'container_id'      =>    '',
                            'menu_class'        =>    'menu',
                            'menu_id'           =>    '',
                            'echo'              =>    false,
                            'before'            =>    '<div class="col-sm-4 col-xs-6 dv-panel-button">',
                            'after'             =>    '</div>',
                            'link_before'       =>    '',
                            'link_after'        =>    '',
                            'items_wrap'        =>    '%3$s',
                            'depth'             =>    0,
                            'walker'            =>    new home_panel_walker_nav_menu
                        ));
                        echo strip_tags($home_panel_menu, '<a></a><div></div>'); ?>
                        <div class="clearfix"></div>
                        <div class="row">
                            <div class="col-sm-6 col-xs-12"></div>
                            <div class="col-sm-6 col-xs-12">
                                <?php if(function_exists('dynamic_sidebar')) {
                                    dynamic_sidebar('home_panel_area');
                                } ?>
                            </div>
                        </div>
                    </div>
                    <div class="dv-home-panel-bottom">
                        <div class="row">
                            <div class="col-sm-7 col-xs-12">
                                <?php if(function_exists('dynamic_sidebar')) {
                                    dynamic_sidebar('home_adv_panel_area');
                                } ?>
                            </div>
                            <div class="col-sm-5 col-xs-12">
                                <?php $contact_page_link = 'href="#" onclick="return false;"';
                                    $pages = get_pages(array('meta_key' => '_wp_page_template', 'meta_value' => 'contact-page.php'));
                                    if(!empty($pages[0])) {
                                        $contact_page_link = ' href="' . esc_url(get_permalink($pages[0])) . '" ';
                                    } ?>
                                <a <?php echo $contact_page_link; ?> id="lnk_get_quote" class="lnk-get-quote">Get a quote ></a>
                                <a id="lnk_call_back" class="lnk-call-back" href="#dv_modal_request_callback" data-toggle="modal">Request a call back ></a>
                                <div id="dv_modal_request_callback" class="modal fade" tabindex="-1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button class="close" type="button" data-dismiss="modal">×</button>
                                                <h4 class="modal-title">Request a callback</h4>
                                            </div>
                                            <div class="modal-body">
                                                <?php while (have_posts()) {
                                                    the_post();
                                                    echo do_shortcode(get_post_meta($post->ID, '_home_form_value', true));
                                                } ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            <?php } else { ?>
                <section id="sct_default_panel" class="sct-default-panel">

                </section>
            <?php } ?>
            <main id="mn_page_content" class="mn-page-content <?php echo $main_class; ?>">