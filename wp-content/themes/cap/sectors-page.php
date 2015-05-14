<?php
/**
 * The template for displaying pages
 * Template Name: Sectors Page
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

get_header(); ?>

    <article id="artc_page_content" class="artc-page-content">
        <div class="row dv-sectors-wrapper">
            <div class="col-sm-3 col-xs-12">
                <?php wp_nav_menu(array(
                    'theme_location'    =>  'sector_left',
                    'menu'              =>  'sector_left',
                    'depth'             =>  0,
                    'container'         =>  false,
                    'menu_class'        =>  'mnu-sidebar-page-menu',
                    'walker'            =>  ''
                )); ?>
            </div>
            <div class="col-sm-9 col-xs-12">
                <h1 id="h_page_title" class="h-page-title">Sectors</h1>

                <h3 class="h-sub-header"><?php echo get_the_title($ID); ?></h3>
                <?php while (have_posts()) {
                    the_post();
                    echo get_the_content();
                } ?>
            </div>
        </div>
    </article>

<?php get_footer(); ?>
