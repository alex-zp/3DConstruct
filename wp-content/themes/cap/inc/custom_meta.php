<?php
function page_add_meta_box() {
    $screens = array('page');
    foreach($screens as $screen) {
        $post_id = $_GET['post'] ? $_GET['post'] : $_POST['post_ID'] ;
        $template_file = strtoupper(get_post_meta($post_id, '_wp_page_template', TRUE));
        switch($template_file) {
            case 'HOME-PAGE.PHP':
                add_meta_box('home_form_sectionid', __('HOME FORM', 'home_form_textdomain'), 'home_form_meta_box_callback', $screen);
                break;
            case 'ABOUT-PAGE.PHP':
                add_meta_box('about_what_sectionid', __('WHAT WE DO', 'about_what_textdomain'), 'about_what_meta_box_callback', $screen);
                add_meta_box('about_how_sectionid', __('HOW WE STARTED', 'about_how_textdomain'), 'about_how_meta_box_callback', $screen);
                break;
            case 'SERVICES-PAGE.PHP':
                add_meta_box('services_sectionid', __('SERVICES', 'services_textdomain'), 'services_meta_box_callback', $screen);
                break;
            case 'CONTACT-PAGE.PHP':
                add_meta_box('contact_map_sectionid', __('CONTACT MAP', 'contact_map_textdomain'), 'contact_map_meta_box_callback', $screen);
                add_meta_box('contact_form_sectionid', __('CONTACT FORM', 'contact_form_textdomain'), 'contact_form_meta_box_callback', $screen);
                break;
            case 'GALLERY-PAGE.PHP':
                add_meta_box('gallery_sectionid', __('GALLERY', 'gallery_textdomain'), 'gallery_meta_box_callback', $screen);
                break;
            default:
                break;
        }
    }
}
add_action('add_meta_boxes', 'page_add_meta_box');
/*---------------------------------------*/
/* HOME PAGE */
/*---------------------------------------*/
function home_form_meta_box_callback($post) {
    wp_nonce_field('home_meta_box', 'home_meta_box_nonce');
    $form_value = get_post_meta($post->ID, '_home_form_value', true);
    echo '<label for="home_form_value_field">';
    _e('Sender shortcode', 'home_form_textdomain');
    echo '</label> ';
    echo '<input type="text" id="home_form_value_field" name="home_form_value_field" value="' . esc_attr($form_value) . '" size="25" style="display: block; width: 100%;" />';
}
function home_save_meta_box_data($post_id) {
    if(!isset($_POST['home_meta_box_nonce'])) {
        return;
    }
    if(!wp_verify_nonce($_POST['home_meta_box_nonce'], 'home_meta_box')) {
        return;
    }
    if(defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return;
    }
    if(isset($_POST['post_type']) && 'page' == $_POST['post_type']) {
        if(!current_user_can('edit_page', $post_id)) {
            return;
        }
    } else {
        if(!current_user_can('edit_post', $post_id)) {
            return;
        }
    }

    update_post_meta($post_id, '_home_form_value', wp_kses($_POST['home_form_value_field'], array('br' => array())));
}
add_action('save_post', 'home_save_meta_box_data');
/*---------------------------------------*/
/* ABOUT PAGE */
/*---------------------------------------*/
function about_what_meta_box_callback($post) {
    wp_nonce_field('about_meta_box', 'about_meta_box_nonce');
    $what_title = get_post_meta($post->ID, '_what_title', true);
    echo '<label for="about_what_title_field">';
    _e('Title', 'homepage_services_textdomain');
    echo '</label> ';
    echo '<input type="text" id="about_what_title_field" name="about_what_title_field" value="' . esc_attr($what_title) . '" size="25" style="display: block; width: 100%;" />';
    $what_text = get_post_meta($post->ID, '_what_text', true);
    echo '<label for="about_what_text_field">';
    _e('Text', 'about_what_textdomain');
    echo '</label> ';
    echo '<textarea id="about_what_text_field" name="about_what_text_field" cols="128" rows="5" style="display: block; width: 100%; margin-bottom: 25px;">' . esc_attr($what_text) . '</textarea>';
}
function about_how_meta_box_callback($post) {
    wp_nonce_field('about_meta_box', 'about_meta_box_nonce');
    $how_title = get_post_meta($post->ID, '_how_title', true);
    echo '<label for="about_how_title_field">';
    _e('Title', 'about_how_textdomain');
    echo '</label> ';
    echo '<input type="text" id="about_how_title_field" name="about_how_title_field" value="' . esc_attr($how_title) . '" size="25" style="display: block; width: 100%;" />';
    $how_text = get_post_meta($post->ID, '_how_text', true);
    echo '<label for="about_how_text_field">';
    _e('Text', 'about_how_textdomain');
    echo '</label> ';
    echo '<textarea id="about_how_text_field" name="about_how_text_field" cols="128" rows="5" style="display: block; width: 100%; margin-bottom: 25px;">' . esc_attr($how_text) . '</textarea>';
}
function about_save_meta_box_data($post_id) {
    if(!isset($_POST['about_meta_box_nonce'])) {
        return;
    }
    if(!wp_verify_nonce($_POST['about_meta_box_nonce'], 'about_meta_box')) {
        return;
    }
    if(defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return;
    }
    if(isset($_POST['post_type']) && 'page' == $_POST['post_type']) {
        if(!current_user_can('edit_page', $post_id)) {
            return;
        }
    } else {
        if(!current_user_can('edit_post', $post_id)) {
            return;
        }
    }

    update_post_meta($post_id, '_what_title', wp_kses($_POST['about_what_title_field'], array('br' => array())));
    update_post_meta($post_id, '_what_text', wp_kses($_POST['about_what_text_field'], array('br' => array())));

    update_post_meta($post_id, '_how_title', wp_kses($_POST['about_how_title_field'], array('br' => array())));
    update_post_meta($post_id, '_how_text', wp_kses($_POST['about_how_text_field'], array('br' => array())));
}
add_action('save_post', 'about_save_meta_box_data');
/*---------------------------------------*/
/* SERVICES PAGE */
/*---------------------------------------*/
function services_meta_box_callback($post) {
    wp_nonce_field('services_meta_box', 'services_meta_box_nonce');
    $services_value = get_post_meta($post->ID, '_services_value', true);
    echo '<label for="services_value_field">';
    _e('Service type', 'services_textdomain');
    echo '</label> ';
    echo '<select id="services_value_field" name="services_value_field" style="display: block; width: 100%;">
                <option value="concept"';
    echo ('concept' == esc_attr($services_value)) ? 'selected' : '';
    echo '>Concept models</option>
                <option value="sales"';
    echo ('sales' == esc_attr($services_value)) ? 'selected' : '';
    echo '>Sales models</option>
                <option value="terrain"';
    echo ('terrain' == esc_attr($services_value)) ? 'selected' : '';
    echo '>Terrain models</option>
            </select>';
}
function services_save_meta_box_data($post_id) {
    if(!isset($_POST['services_meta_box_nonce'])) {
        return;
    }
    if(!wp_verify_nonce($_POST['services_meta_box_nonce'], 'services_meta_box')) {
        return;
    }
    if(defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return;
    }
    if(isset($_POST['post_type']) && 'page' == $_POST['post_type']) {
        if(!current_user_can('edit_page', $post_id)) {
            return;
        }
    } else {
        if(!current_user_can('edit_post', $post_id)) {
            return;
        }
    }

    update_post_meta($post_id, '_services_value', wp_kses($_POST['services_value_field'], array('br' => array())));
}
add_action('save_post', 'services_save_meta_box_data');
/*---------------------------------------*/
/* CONTACT PAGE */
/*---------------------------------------*/
function contact_map_meta_box_callback($post) {
    wp_nonce_field('contact_meta_box', 'contact_meta_box_nonce');
    $map_value = get_post_meta($post->ID, '_map_value', true);
    echo '<label for="contact_map_value_field">';
    _e('Address', 'contact_map_textdomain');
    echo '</label> ';
    echo '<input type="text" id="contact_map_value_field" name="contact_map_value_field" value="' . esc_attr($map_value) . '" size="25" style="display: block; width: 100%;" />';
}
function contact_form_meta_box_callback($post) {
    wp_nonce_field('contact_meta_box', 'contact_meta_box_nonce');
    $form_value = get_post_meta($post->ID, '_form_value', true);
    echo '<label for="contact_form_value_field">';
    _e('Sender shortcode', 'contact_form_textdomain');
    echo '</label> ';
    echo '<input type="text" id="contact_form_value_field" name="contact_form_value_field" value="' . esc_attr($form_value) . '" size="25" style="display: block; width: 100%;" />';
}
function contact_save_meta_box_data($post_id) {
    if(!isset($_POST['contact_meta_box_nonce'])) {
        return;
    }
    if(!wp_verify_nonce($_POST['contact_meta_box_nonce'], 'contact_meta_box')) {
        return;
    }
    if(defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return;
    }
    if(isset($_POST['post_type']) && 'page' == $_POST['post_type']) {
        if(!current_user_can('edit_page', $post_id)) {
            return;
        }
    } else {
        if(!current_user_can('edit_post', $post_id)) {
            return;
        }
    }

    update_post_meta($post_id, '_map_value', wp_kses($_POST['contact_map_value_field'], array('br' => array())));

    update_post_meta($post_id, '_form_value', wp_kses($_POST['contact_form_value_field'], array('br' => array())));
}
add_action('save_post', 'contact_save_meta_box_data');
/*---------------------------------------*/
/* GALLERY PAGE */
/*---------------------------------------*/
function gallery_meta_box_callback($post) {
    wp_nonce_field('gallery_meta_box', 'gallery_meta_box_nonce');
    $gallery_value = get_post_meta($post->ID, '_gallery_value', true);
    echo '<label for="gallery_value_field">';
    _e('Gallery name', 'gallery_textdomain');
    echo '</label> ';
    echo '<select id="gallery_value_field" name="gallery_value_field" style="display: block; width: 100%;">
                <option value="Gallery_Concept"';
                    echo ('Gallery_Concept' == esc_attr($gallery_value)) ? 'selected' : '';
                echo '>Concept models</option>
                <option value="Gallery_Sales"';
                    echo ('Gallery_Sales' == esc_attr($gallery_value)) ? 'selected' : '';
                echo '>Sales models</option>
                <option value="Gallery_Planners"';
                    echo ('Gallery_Planners' == esc_attr($gallery_value)) ? 'selected' : '';
                echo '>Planners models</option>
            </select>';
}
function gallery_save_meta_box_data($post_id) {
    if(!isset($_POST['gallery_meta_box_nonce'])) {
        return;
    }
    if(!wp_verify_nonce($_POST['gallery_meta_box_nonce'], 'gallery_meta_box')) {
        return;
    }
    if(defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return;
    }
    if(isset($_POST['post_type']) && 'page' == $_POST['post_type']) {
        if(!current_user_can('edit_page', $post_id)) {
            return;
        }
    } else {
        if(!current_user_can('edit_post', $post_id)) {
            return;
        }
    }

    update_post_meta($post_id, '_gallery_value', wp_kses($_POST['gallery_value_field'], array('br' => array())));
}
add_action('save_post', 'gallery_save_meta_box_data');