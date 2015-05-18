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
                            <?php if(function_exists('dynamic_sidebar')) {
                                ob_start();
                                dynamic_sidebar('footer_first_area');
                                $sidebar = ob_get_contents();
                                ob_end_clean();
                                $sidebar = preg_replace('/([_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3})/', '<a href="mailto:\\1">\\1</a>', $sidebar);
                                $sidebar = preg_replace('/((http|https|ftp|ftps)\:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(\/\S*)?)/', '<a href="\\1">\\1</a>', $sidebar);
                                echo (!empty($sidebar)) ? $sidebar : '';
                            } ?>
                        </div>
                        <div class="col-xs-6">
                            <?php if(function_exists('dynamic_sidebar')) {
                                ob_start();
                                dynamic_sidebar('footer_second_area');
                                $sidebar = ob_get_contents();
                                ob_end_clean();
                                $sidebar = preg_replace('/([_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3})/', '<a href="mailto:\\1">\\1</a>', $sidebar);
                                $sidebar = preg_replace('/((http|https|ftp|ftps)\:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(\/\S*)?)/', '<a href="\\1">\\1</a>', $sidebar);
                                echo (!empty($sidebar)) ? $sidebar : '';

                                ob_start();
                                dynamic_sidebar('footer_third_area');
                                $sidebar = ob_get_contents();
                                ob_end_clean();
                                $sidebar = preg_replace('/([_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3})/', '<a href="mailto:\\1">\\1</a>', $sidebar);
                                $sidebar = preg_replace('/((http|https|ftp|ftps)\:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(\/\S*)?)/', '<a href="\\1">\\1</a>', $sidebar);
                                echo (!empty($sidebar)) ? $sidebar : '';
                            } ?>
                        </div>
                        <div class="col-xs-3">
                            <a href="<?php echo esc_url(home_url('/')); ?>" rel="home" title="Home">
                                <img src="<?php echo get_bloginfo('template_directory'); ?>/images/header_logo.png" id="img_logo" class="img-logo" style="width: 100%; height: auto;"/>
                            </a>
                        </div>
                    </div>
                </footer>
            </main>
            <?php wp_footer(); ?>
        </div>
    </body>
</html>
