<?php
/**
 * The default template for displaying content
 *
 * Used for both single and index/archive/search.
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */
?>
<?php $feature_image_meta = (has_post_thumbnail()) ? wp_get_attachment_url(get_post_thumbnail_id($page->ID)) : NULL; ?>
<article id="post-<?php the_ID(); ?>" <?php post_class('artc-blog'); ?>>
    <?php if(is_single()) { ?>
        <div class="row">
            <?php if(!empty($feature_image_meta)) { ?>
                <div class="col-xs-12">
                    <img src="<?php echo $feature_image_meta; ?>" class="img-blog-image" />
                </div>
            <?php } ?>
            <div class="col-xs-12">
                <header class="hdr-blog">
                    <?php
                        the_title('<h1 class="h-blog-title">', '</h1>');
                        edit_post_link(__('Edit', 'cap'), '<span class="spn-edit-post-link">(', ')</span>');
                    ?>
                    <div class="dv-blog-date"><?php the_time('Y-m-d H:i'); ?></div>
                </header>
                <section class="sct-blog"><?php the_content(); ?></section>
                <footer class="ftr-blog"></footer>
            </div>
        </div>
    <?php } else { ?>
        <div class="row">
            <?php if(!empty($feature_image_meta)) { ?>
                <div class="col-sm-5 col-xs-2">
                    <img src="<?php echo $feature_image_meta; ?>" class="img-blog-image" />
                </div>
                <div class="col-sm-7 col-xs-10">
            <?php } else { ?>
                <div class="col-xs-12">
            <?php } ?>
                <header class="hdr-blog">
                    <?php
                        the_title(sprintf('<h3 class="h-blog-title"><a href="%s" rel="bookmark">', esc_url(get_permalink())), '</a></h3>');
                        edit_post_link(__('Edit', 'cap'), '<span class="spn-edit-post-link">(', ')</span>');
                    ?>
                    <div class="dv-blog-date"><?php the_time('Y-m-d H:i'); ?></div>
                </header>
                <section class="sct-blog"><?php the_excerpt(); ?></section>
                <footer class="ftr-blog"></footer>
            </div>
        </div>
    <?php } ?>
</article>