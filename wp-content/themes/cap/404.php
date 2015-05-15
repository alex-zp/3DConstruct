<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

get_header(); ?>

    <article id="artc_page_content" class="artc-page-content">
        <div class="dv-error-wrapper">
            <h1 class="page-title"><?php _e('Oops! That page can&rsquo;t be found.', 'cap'); ?></h1>
            <?php _e('It looks like nothing was found at this location.', 'cap'); ?>
        </div>
    </article>

<?php get_footer(); ?>
