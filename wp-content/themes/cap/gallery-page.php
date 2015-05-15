<?php
/**
 * The template for displaying pages
 * Template Name: Gallery Page
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

get_header(); ?>

    <article id="artc_page_content" class="artc-page-content">
        <div class="row dv-gallery-wrapper">
            <div class="col-sm-3 col-xs-12">
                <?php wp_nav_menu(array(
                    'theme_location'    =>  'gallery_left',
                    'menu'              =>  'gallery_left',
                    'depth'             =>  0,
                    'container'         =>  false,
                    'menu_class'        =>  'mnu-sidebar-page-menu',
                    'walker'            =>  ''
                )); ?>
            </div>
            <div class="col-sm-9 col-xs-12">
                <h1 id="h_page_title" class="h-page-title">Gallery</h1>
            </div>
            <div class="col-xs-12">
                <div class="row">
                    <?php $type = get_post_meta($post->ID, '_gallery_value', true);
                    $args = array(
                        'post_type'         =>  $type,
                        'post_status'       =>  'publish',
                        'posts_per_page'    =>  -1,
                        'caller_get_posts'  =>  1,
                        'orderby'           =>  'meta_value',
                        'order'             =>  'ASC'
                    );
                    $my_query = null;
                    $my_query = new WP_Query($args);
                    if($my_query->have_posts()) {
                        while ($my_query->have_posts()) {
                            $my_query->the_post(); ?>
                            <div class="col-sm-3 col-xs-6">
                                <a href="<?php echo wp_get_attachment_url(get_post_thumbnail_id($post->ID)); ?>">
                                    <img src="<?php echo wp_get_attachment_url(get_post_thumbnail_id($post->ID)); ?>" class="img-gallery-photo" />
                                </a>
                            </div>
                        <?php } }
                    wp_reset_query(); ?>
                </div>
            </div>
        </div>
    </article>

<?php get_footer(); ?>
