<?php
/**
 * The template for displaying pages
 * Template Name: Services Page
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

get_header(); ?>

    <article id="artc_page_content" class="artc-page-content">
        <div class="row dv-services-wrapper">
            <div class="col-sm-3 col-xs-12">
                <?php wp_nav_menu(array(
                    'theme_location'    =>  'services_left',
                    'menu'              =>  'services_left',
                    'depth'             =>  0,
                    'container'         =>  false,
                    'menu_class'        =>  'mnu-sidebar-page-menu',
                    'walker'            =>  ''
                )); ?>
            </div>
            <div class="col-sm-9 col-xs-12">
                <h1 id="h_page_title" class="h-page-title">SERVICES</h1>

                <?php $type = get_post_meta($post->ID, '_services_value', true);
                if($type == 'concept') { ?>
                    <h3 class="h-sub-header">WHY 3D MODELS ARE BETTER THAN TRADITION MODELS</h3>
                    <p>Visualisation of buildings was traditionally done using scale models made of wood or foam board.
                        This allowed architects to see how the building would stand in physical space and help them pre-empt any construction issues.
                        There was only one problem – handmade Styrofoam scale models can be very expensive and time consuming to build.
                        The emergence of 3D printing does away with all this. It’s cheaper, it’s quicker and it’s a great deal easier.</p>
                <?php } ?>

                <div class="row dv-models-wrapper">
                    <?php $args = array(
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
                        <?php while ($my_query->have_posts()) {
                            $my_query->the_post(); ?>
                            <div class="col-sm-4 col-xs-12 dv-models-item">
                                <img src="<?php echo wp_get_attachment_url(get_post_thumbnail_id($post->ID)); ?>" class="img-model-photo" />
                            </div>
                        <?php } }
                    wp_reset_query(); ?>
                </div>
                <h3 class="h-sub-header"><?php echo get_the_title($ID); ?></h3>
                <?php while (have_posts()) {
                    the_post();
                    echo '<p>' . get_the_content() . '</p>';
                } ?>
            </div>
        </div>
    </article>

<?php get_footer(); ?>
