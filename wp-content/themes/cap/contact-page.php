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
                    <h1 id="h_page_title" class="h-page-title">How to find us</h1>
                    <?php
                        echo get_the_content();
                        $address = get_post_meta($post->ID, '_map_value', true);
                        if(!empty($address)) { ?>
                            <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
                                src="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=<?php echo rawurlencode($address); ?>&aq=0&sll=&sspn=&vpsrc=0&ie=UTF8&hq=&hnear=&z=14&iwloc=A&output=embed"
                            ></iframe>
                    <?php } ?>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <h1 id="h_page_title" class="h-page-title">Contact Form</h1>
                    <?php echo do_shortcode(get_post_meta($post->ID, '_form_value', true)); ?>
                </div>
            </div>
        <?php } ?>
    </article>

<?php get_footer(); ?>