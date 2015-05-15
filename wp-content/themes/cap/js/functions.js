/* global screenReaderText */
/**
 * Theme functions file.
 *
 * Contains handlers for navigation and widget area.
 */

(function($) {
    $('#customize-controls li#accordion-section-colors, #customize-controls li#accordion-section-header_image, #customize-controls li#accordion-section-background_image', parent.document.body).empty().remove();

    function resizeDocument() {
        var height_document = $('body').height();
        var height_window = $(window).height();
        var height_diff = height_window - height_document;
        if(height_diff > 0) {
            var article = $('article#artc_page_content');
            if(article !== undefined && article !== null) {
                article.height(article.height() + height_diff - 15);
            }
        }

        var dv_items = $('section[id="sct_home_services"] div[id="dv_services_img"], section[id="sct_home_works"] div[id="dv_works_img"]');
        if(dv_items !== undefined && dv_items !== null) {
            $.each(dv_items, function(k, v) {
                $(v).css('height', ($(v).width() / 1.077) + 'px');
            })
        }
    }
    $(document).ready(function() { resizeDocument(); });
    $(window).resize(function() { resizeDocument(); });
})(jQuery);