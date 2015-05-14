<?php
/**
 * The template for displaying pages
 * Template Name: About Page
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */

get_header(); ?>

    <article id="artc_page_content" class="artc-page-content">
        <div class="row dv-about-wrapper">
            <div class="col-sm-8 col-xs-12 col-sm-offset-2 col-xs-offset-0">
                <h1 id="h_page_title" class="h-page-title"><?php echo get_the_title($ID); ?></h1>
                <h3 class="h-sub-header"><?php echo preg_replace('/\n\r|\r\n|\n|\r/', '</p><p>', get_post_meta($post->ID, '_what_title', true)); ?></h3>
                <p><?php echo preg_replace('/\n\r|\r\n|\n|\r/', '</p><p>', get_post_meta($post->ID, '_what_text', true)); ?></p>
                <h3 class="h-sub-header"><?php echo preg_replace('/\n\r|\r\n|\n|\r/', '</p><p>', get_post_meta($post->ID, '_how_title', true)); ?></h3>
                <p><?php echo preg_replace('/\n\r|\r\n|\n|\r/', '</p><p>', get_post_meta($post->ID, '_how_text', true)); ?></p>

                <div class="row dv-team-wrapper">
                    <?php $type = 'team';
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
                            <h3 class="h-sub-header">Meet the team</h3>
                            <?php while ($my_query->have_posts()) {
                                $my_query->the_post(); ?>
                                <div class="col-sm-4 col-xs-12 dv-team-item">
                                    <img src="<?php echo wp_get_attachment_url(get_post_thumbnail_id($post->ID)); ?>" class="img-team-photo" />
                                    <h4><?php the_title(); ?></h4>
                                    <span>
                                        <?php
                                            $page_keywords = '';
                                            $keywords = array();
                                            $posttags = get_the_tags();
                                            foreach($posttags as $tag) { $keywords[] = $tag->name; }
                                            $page_keywords = implode(',', $keywords);
                                            echo $page_keywords;
                                        ?>
                                    </span>
                                    <p><?php the_content(); ?></p>
                                </div>
                            <?php } }
                        wp_reset_query(); ?>
                </div>
            </div>
        </div>
    </article>

<?php get_footer(); ?>
