<?php
/**
 * The template for displaying pages
 * Template Name: Contact Page
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

get_header(); ?>

    <article id="artc_page_content" class="artc-page-content">
        <?php while (have_posts()) {
            the_post(); ?>
            <div class="row dv-contact-wrapper">
                <div class="col-sm-6 col-xs-12">
                    <h1 id="h_page_title" class="h-page-title"><?php echo get_the_title($ID); ?></h1>
                    <?php echo get_the_content(); ?>
                    <?php /* <canvas id="map_canvas" data-city="<?php echo get_post_meta($post->ID, '_map_value', true); ?>"></canvas> */ ?>

                    <canvas id="map_canvas" data-city="Wexford Ireland"></canvas>
                    <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=7901+Xerxes+Ave+S,+Bloomington,+MN+55431&aq=0&sll=37.160317,-95.712891&sspn=28.780083,75.410156&vpsrc=0&ie=UTF8&hq=&hnear=7901+Xerxes+Ave+S,+Bloomington,+Hennepin,+Minnesota+55431&ll=44.859641,-93.318644&spn=0.021294,0.036564&z=14&iwloc=A&output=embed"></iframe><br /><small><a href="http://maps.google.com/maps?f=q&source=embed&hl=en&geocode=&q=7901+Xerxes+Ave+S,+Bloomington,+MN+55431&aq=0&sll=37.160317,-95.712891&sspn=28.780083,75.410156&vpsrc=0&ie=UTF8&hq=&hnear=7901+Xerxes+Ave+S,+Bloomington,+Hennepin,+Minnesota+55431&ll=44.859641,-93.318644&spn=0.021294,0.036564&z=14&iwloc=A" style="color:#0000FF;text-align:left">View Larger Map</a></small>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <h1 id="h_page_title" class="h-page-title"><?php echo get_the_title($ID); ?></h1>
                    <?php echo do_shortcode(get_post_meta($post->ID, '_form_value', true)); ?>
                </div>
            </div>
        <?php } ?>
    </article>

<?php get_footer(); ?>