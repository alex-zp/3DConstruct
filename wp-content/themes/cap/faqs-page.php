<?php
/**
 * The template for displaying pages
 * Template Name: FAQs Page
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

get_header(); ?>

    <article id="artc_page_content" class="artc-page-content">
        <div class="row dv-faqs-wrapper">
            <div class="col-sm-8 col-xs-12 col-sm-offset-2 col-xs-offset-0">
                <h1 id="h_page_title" class="h-page-title"><?php echo get_the_title($ID); ?></h1>
                <?php while (have_posts()) {
                    the_post();
                    echo get_the_content();
                } ?>
            </div>
        </div>
    </article>

<?php get_footer(); ?>
