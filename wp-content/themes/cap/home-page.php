<?php
/**
 * The template for displaying pages
 * Template Name: Home Page
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

get_header(); ?>
    <article id="artc_page_content" class="artc-page-content">
        <?php $type = 'model';
        $args = array(
            'post_type'         =>  $type,
            'post_status'       =>  'publish',
            'posts_per_page'    =>  3,
            'caller_get_posts'  =>  1,
            'orderby'           =>  'meta_value',
            'order'             =>  'ASC'
        );
        $my_query = null;
        $my_query = new WP_Query($args);
        if($my_query->have_posts()) { ?>
            <section id="sct_home_services" class="sct-home-services">
                <h2>3D PRINTING SERVICES</h2>
                <div class="row">
                    <?php while ($my_query->have_posts()) {
                        $my_query->the_post(); ?>
                        <div class="col-sm-4 col-xs-12">
                            <div id="dv_services_img" class="dv-services-img" style="background-image: url('<?php echo wp_get_attachment_url(get_post_thumbnail_id($post->ID)); ?>');"></div>
                            <h3><?php the_title(); ?></h3>
                            <p><?php the_content(); ?></p>
                        </div>
                    <?php } ?>
                </div>
            </section>
        <?php }
        wp_reset_query(); ?>

        <?php $type = 'steps';
        $args = array(
            'post_type'         =>  $type,
            'post_status'       =>  'publish',
            'posts_per_page'    =>  3,
            'caller_get_posts'  =>  1,
            'orderby'           =>  'meta_value',
            'order'             =>  'ASC'
        );
        $my_query = null;
        $my_query = new WP_Query($args);
        if($my_query->have_posts()) { ?>
            <section id="sct_home_works" class="sct-home-works">
                <h2>HOW IT WORKS</h2>
                <div class="row">
                    <?php while ($my_query->have_posts()) {
                        $my_query->the_post(); ?>
                        <div class="col-sm-4 col-xs-12 dv-home-works-container">
                            <div id="dv_works_img" class="dv-works-img" style="background-image: url('<?php echo wp_get_attachment_url(get_post_thumbnail_id($post->ID)); ?>');"></div>
                            <h3><?php the_title(); ?></h3>
                            <p><?php the_content(); ?></p>
                        </div>
                    <?php } ?>
                </div>
            </section>
        <?php }
        wp_reset_query(); ?>
    </article>

<?php get_footer(); ?>
