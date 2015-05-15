<?php

function create_post_type() {
    register_post_type('Model',
        array(
            'labels'        =>  array('name' => __('Model'), 'singular_name' => __('Model')),
            'public'        =>  true,
            'has_archive'   =>  false,
            'taxonomies'    =>  array('post_tag'),
            'menu_icon'     =>  'dashicons-admin-home',
            'supports'	    =>	array('title', 'editor', 'page-attributes', 'thumbnail')
        )
    );
    register_post_type('Steps',
        array(
            'labels'        =>  array('name' => __('Steps'), 'singular_name' => __('Steps')),
            'public'        =>  true,
            'has_archive'   =>  false,
            'taxonomies'    =>  array('post_tag'),
            'menu_icon'     =>  'dashicons-admin-home',
            'supports'	    =>	array('title', 'editor', 'page-attributes', 'thumbnail')
        )
    );

    register_post_type('Team',
        array(
            'labels'        =>  array('name' => __('Team'), 'singular_name' => __('Team')),
            'public'        =>  true,
            'has_archive'   =>  false,
            'taxonomies'    =>  array('post_tag'),
            'menu_icon'     =>  'dashicons-info',
            'supports'	    =>	array('title', 'editor', 'page-attributes', 'thumbnail')
        )
    );

    register_post_type('Concept',
        array(
            'labels'        =>  array('name' => __('Concept models'), 'singular_name' => __('Concept models')),
            'public'        =>  true,
            'has_archive'   =>  false,
            'taxonomies'    =>  array('post_tag'),
            'menu_icon'     =>  'dashicons-format-gallery',
            'supports'	    =>	array('title', 'editor', 'page-attributes', 'thumbnail')
        )
    );
    register_post_type('Sales',
        array(
            'labels'        =>  array('name' => __('Sales models'), 'singular_name' => __('Sales models')),
            'public'        =>  true,
            'has_archive'   =>  false,
            'taxonomies'    =>  array('post_tag'),
            'menu_icon'     =>  'dashicons-format-gallery',
            'supports'	    =>	array('title', 'editor', 'page-attributes', 'thumbnail')
        )
    );
    register_post_type('Terrain',
        array(
            'labels'        =>  array('name' => __('Terrain models'), 'singular_name' => __('Terrain models')),
            'public'        =>  true,
            'has_archive'   =>  false,
            'taxonomies'    =>  array('post_tag'),
            'menu_icon'     =>  'dashicons-format-gallery',
            'supports'	    =>	array('title', 'editor', 'page-attributes', 'thumbnail')
        )
    );


    register_post_type('Gallery_Concept',
        array(
            'labels'        =>  array('name' => __('Gallery concept models'), 'singular_name' => __('Gallery concept models')),
            'public'        =>  true,
            'has_archive'   =>  false,
            'taxonomies'    =>  array('post_tag'),
            'menu_icon'     =>  'dashicons-images-alt2',
            'supports'	    =>	array('title', 'editor', 'page-attributes', 'thumbnail')
        )
    );
    register_post_type('Gallery_Sales',
        array(
            'labels'        =>  array('name' => __('Gallery sales models'), 'singular_name' => __('Gallery sales models')),
            'public'        =>  true,
            'has_archive'   =>  false,
            'taxonomies'    =>  array('post_tag'),
            'menu_icon'     =>  'dashicons-images-alt2',
            'supports'	    =>	array('title', 'editor', 'page-attributes', 'thumbnail')
        )
    );
    register_post_type('Gallery_Planners',
        array(
            'labels'        =>  array('name' => __('Gallery planner models'), 'singular_name' => __('Gallery planner models')),
            'public'        =>  true,
            'has_archive'   =>  false,
            'taxonomies'    =>  array('post_tag'),
            'menu_icon'     =>  'dashicons-images-alt2',
            'supports'	    =>	array('title', 'editor', 'page-attributes', 'thumbnail')
        )
    );
}
add_action('init', 'create_post_type');