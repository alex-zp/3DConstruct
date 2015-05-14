<?php
/**
 * The template for displaying archive pages
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * If you'd like to further customize these archive views, you may create a
 * new template file for each one. For example, tag.php (Tag archives),
 * category.php (Category archives), author.php (Author archives), etc.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

get_header(); ?>

    <article id="artc_page_content" class="artc-page-content">
        <div class="row dv-blog-wrapper">
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
                <h1 id="h_page_title" class="h-page-title">Blog</h1>
                <?php if(have_posts()) {
                    while (have_posts()) {
                        the_post();
                        get_template_part('content', get_post_format());
                    }
                    the_posts_pagination(array(
                        'prev_text' => __('Previous page', 'cap'),
                        'next_text' => __('Next page', 'cap'),
                        'before_page_number' => '<span class="meta-nav screen-reader-text">' . __('Page', 'cap') . ' </span>',
                    ));
                } else {
                    get_template_part('content', 'none');

                } ?>
            </div>
        </div>
    </article>

<?php get_footer(); ?>
