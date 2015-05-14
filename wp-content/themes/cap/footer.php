<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the "site-content" div and all content after.
 *
 * @package WordPress
 * @subpackage cap
 * @since cap 1.0
 */
?>
                <footer id="ftr_footer_content" class="ftr-footer-content">
                    <h1>Contact</h1>
                    <div class="row">
                        <div class="col-xs-3">
                            <?php if ( function_exists('dynamic_sidebar') ):
                                dynamic_sidebar('footer_first_area');
                            endif; ?>
                        </div>
                        <div class="col-xs-6">
                            <?php if ( function_exists('dynamic_sidebar') ):
                                dynamic_sidebar('footer_second_area');
                                dynamic_sidebar('footer_third_area');
                            endif; ?>
                        </div>
                        <div class="col-xs-3">
                            <img src="<?php echo get_bloginfo('template_directory'); ?>/images/header_logo.png" id="img_logo" class="img-logo" style="width: 100%; height: auto;"/>
                        </div>
                    </div>
                </footer>
            </main>
            <?php wp_footer(); ?>
        </div>
    </body>
</html>
