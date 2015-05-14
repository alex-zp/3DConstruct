<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

get_header(); ?>

    <article id="artc_page_content" class="artc-page-content">
        <div class="row dv-post-wrapper">
            <div class="col-sm-3 col-xs-12">
                <?php wp_nav_menu(array(
                    'theme_location'    =>  'blog_left',
                    'menu'              =>  'blog_left',
                    'depth'             =>  0,
                    'container'         =>  false,
                    'menu_class'        =>  'mnu-sidebar-page-menu',
                    'walker'            =>  ''
                )); ?>
            </div>
            <div class="col-sm-9 col-xs-12">
                <?php while (have_posts()) {
                    the_post();
                    get_template_part('content', get_post_format()); ?>
                    <div class="dv-post-navigation">
                        <?php the_post_navigation(array('next_text' => '<span class="spn-next-post-title">%title</span>', 'prev_text' => '<span class="spn-prev-post-title">%title</span>')); ?>
                    </div>
                <?php } ?>
            </div>
        </div>
    </article>

<?php get_footer(); ?>
