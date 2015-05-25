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
    $(document).ready(function() {
        resizeDocument();
        $('#submit_request_callback').on('click', function(event) {
            event.preventDefault();
            var form = $(this).closest('form#frm_request_callback');
            if(form !== undefined && form !== null) {
                var name = form.find('input[name="txt-name"]').val();
                var phone = form.find('input[name="txt-phone"]').val();
                var nonce = form.find('input[name="request_submit_nonce"]').val();
                $.ajax({
                    type        :   'POST',
                    url         :   '/wp-admin/admin-ajax.php',
                    data        :   { 'action' : 'ajax_callback_form', 'name' : name, 'phone' : phone, 'nonce' : nonce },
                    beforeSend  :   function() {
                                        form.find('input[name="txt-name"]').val('');
                                        form.find('input[name="txt-phone"]').val('');
                                        $('#dv_modal_request_callback').modal('hide');
                                    },
                    success     :   function() {  }
                });
            }
        });
    });
    $(window).resize(function() { resizeDocument(); });
})(jQuery);