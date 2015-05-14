<?php

function page_add_meta_box() {
    $screens = array('page');
    foreach($screens as $screen) {
        $post_id = $_GET['post'] ? $_GET['post'] : $_POST['post_ID'] ;
        $template_file = strtoupper(get_post_meta($post_id, '_wp_page_template', TRUE));
        switch($template_file) {
            case 'HOME-PAGE.PHP':
                break;
            case 'ABOUT-PAGE.PHP':
                add_meta_box('about_what_sectionid', __('WHAT WE DO', 'about_what_textdomain'), 'about_what_meta_box_callback', $screen);
                add_meta_box('about_how_sectionid', __('HOW WE STARTED', 'about_how_textdomain'), 'about_how_meta_box_callback', $screen);
                break;
            case 'SERVICES-PAGE.PHP':
                add_meta_box('services_sectionid', __('SERVICES', 'services_textdomain'), 'services_meta_box_callback', $screen);
                break;
            default:
                break;
        }
    }
}
add_action('add_meta_boxes', 'page_add_meta_box');

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
/* ABOUT PAGE */
/*---------------------------------------*/
function services_meta_box_callback($post) {
    wp_nonce_field('services_meta_box', 'services_meta_box_nonce');
    $why_title = get_post_meta($post->ID, '_why_title', true);
    echo '<label for="services_why_title_field">';
    _e('Title (First block)', 'services_textdomain');
    echo '</label> ';
    echo '<input type="text" id="services_why_title_field" name="services_why_title_field" value="' . esc_attr($why_title) . '" size="25" style="display: block; width: 100%;" />';
    $why_text = get_post_meta($post->ID, '_why_text', true);
    echo '<label for="services_why_text_field">';
    _e('Text (First block)', 'services_textdomain');
    echo '</label> ';
    echo '<textarea id="services_why_text_field" name="services_why_text_field" cols="128" rows="5" style="display: block; width: 100%; margin-bottom: 25px;">' . esc_attr($why_text) . '</textarea>';


    $concept_title = get_post_meta($post->ID, '_concept_title', true);
    echo '<label for="services_concept_title_field">';
    _e('Title (Second block)', 'services_textdomain');
    echo '</label> ';
    echo '<input type="text" id="services_concept_title_field" name="services_concept_title_field" value="' . esc_attr($concept_title) . '" size="25" style="display: block; width: 100%;" />';
    $concept_text = get_post_meta($post->ID, '_concept_text', true);
    echo '<label for="services_concept_text_field">';
    _e('Text (Second block)', 'services_textdomain');
    echo '</label> ';
    echo '<textarea id="services_concept_text_field" name="services_concept_text_field" cols="128" rows="5" style="display: block; width: 100%; margin-bottom: 25px;">' . esc_attr($concept_text) . '</textarea>';


    $sales_title = get_post_meta($post->ID, '_sales_title', true);
    echo '<label for="services_sales_title_field">';
    _e('Title (Third block)', 'services_textdomain');
    echo '</label> ';
    echo '<input type="text" id="services_sales_title_field" name="services_sales_title_field" value="' . esc_attr($sales_title) . '" size="25" style="display: block; width: 100%;" />';
    $sales_text = get_post_meta($post->ID, '_sales_text', true);
    echo '<label for="services_sales_text_field">';
    _e('Text (Third block)', 'services_textdomain');
    echo '</label> ';
    echo '<textarea id="services_sales_text_field" name="services_sales_text_field" cols="128" rows="5" style="display: block; width: 100%; margin-bottom: 25px;">' . esc_attr($sales_text) . '</textarea>';


    $terrain_title = get_post_meta($post->ID, '_terrain_title', true);
    echo '<label for="services_terrain_title_field">';
    _e('Title (Fourth block)', 'services_textdomain');
    echo '</label> ';
    echo '<input type="text" id="services_terrain_title_field" name="services_terrain_title_field" value="' . esc_attr($terrain_title) . '" size="25" style="display: block; width: 100%;" />';
    $terrain_text = get_post_meta($post->ID, '_terrain_text', true);
    echo '<label for="services_terrain_text_field">';
    _e('Text (Fourth block)', 'services_textdomain');
    echo '</label> ';
    echo '<textarea id="services_terrain_text_field" name="services_terrain_text_field" cols="128" rows="5" style="display: block; width: 100%; margin-bottom: 25px;">' . esc_attr($terrain_text) . '</textarea>';
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

    update_post_meta($post_id, '_why_title', wp_kses($_POST['services_why_title_field'], array('br' => array())));
    update_post_meta($post_id, '_why_text', wp_kses($_POST['services_why_text_field'], array('br' => array())));

    update_post_meta($post_id, '_concept_title', wp_kses($_POST['services_concept_title_field'], array('br' => array())));
    update_post_meta($post_id, '_concept_text', wp_kses($_POST['services_concept_text_field'], array('br' => array())));

    update_post_meta($post_id, '_sales_title', wp_kses($_POST['services_sales_title_field'], array('br' => array())));
    update_post_meta($post_id, '_sales_text', wp_kses($_POST['services_sales_text_field'], array('br' => array())));

    update_post_meta($post_id, '_terrain_title', wp_kses($_POST['services_terrain_title_field'], array('br' => array())));
    update_post_meta($post_id, '_terrain_text', wp_kses($_POST['services_terrain_text_field'], array('br' => array())));
}
add_action('save_post', 'services_save_meta_box_data');
/*---------------------------------------*/
