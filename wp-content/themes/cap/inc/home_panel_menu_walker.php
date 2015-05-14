<?php

class home_panel_walker_nav_menu extends Walker_Nav_Menu {
    function start_lvl( &$output, $depth ) {
        $indent = ( $depth > 0  ? str_repeat( "\t", $depth ) : '' );
        $display_depth = ( $depth + 1);
        $classes = array(
            'sub-menu',
            ( $display_depth % 2  ? 'menu-odd' : 'menu-even' ),
            ( $display_depth >=2 ? 'sub-sub-menu' : '' ),
            'menu-depth-' . $display_depth
        );
        $class_names = implode( ' ', $classes );
        $output .= "\n" . $indent . '<ul class="' . $class_names . '">' . "\n";
    }

    function start_el( &$output, $item, $depth, $args ) {
        global $wp_query;
        $indent = ( $depth > 0 ? str_repeat( "\t", $depth ) : '' );

        $depth_classes = array(
            ( $depth == 0 ? 'main-menu-item' : 'sub-menu-item' ),
            ( $depth >=2 ? 'sub-sub-menu-item' : '' ),
            ( $depth % 2 ? 'menu-item-odd' : 'menu-item-even' ),
            'menu-item-depth-' . $depth
        );
        $depth_class_names = esc_attr( implode( ' ', $depth_classes ) );

        $classes = empty( $item->classes ) ? array() : (array) $item->classes;
        $class_names = esc_attr( implode( ' ', apply_filters( 'nav_menu_css_class', array_filter( $classes ), $item ) ) );

        $output .= $indent . '<li id="nav-menu-item-'. $item->ID . '" class="' . $depth_class_names . ' ' . $class_names . '">';

        $item_class = '';
        switch(strtoupper($item->title)) {
            case 'SERVICES':
                $item_class = 'lnk-home-menu-item-services';
                break;
            case 'GALLERY':
                $item_class = 'lnk-home-menu-item-gallery';
                break;
            case 'FAQS':
                $item_class = 'lnk-home-menu-item-faqs';
                break;
            case 'ARCHITECTS':
                $item_class = 'lnk-home-menu-item-architects';
                break;
            case 'SELF BUILDS':
                $item_class = 'lnk-home-menu-item-selfbuilds';
                break;
            case 'STUDENTS':
                $item_class = 'lnk-home-menu-item-students';
                break;
            default:
                $item_class = 'lnk-home-menu-item-default';
                break;
        }

        $attributes  = ! empty( $item->attr_title ) ? ' title="'  . esc_attr( $item->attr_title ) .'"' : '';
        $attributes .= ! empty( $item->target )     ? ' target="' . esc_attr( $item->target     ) .'"' : '';
        $attributes .= ! empty( $item->xfn )        ? ' rel="'    . esc_attr( $item->xfn        ) .'"' : '';
        $attributes .= ! empty( $item->url )        ? ' href="'   . esc_attr( $item->url        ) .'"' : '';
        $attributes .= ' class="menu-link ' . ( $depth > 0 ? 'sub-menu-link' : 'main-menu-link' ) . ' ' . $item_class . '"';

        $item_output = sprintf( '%1$s<a%2$s>%3$s%4$s%5$s</a>%6$s',
            $args->before,
            $attributes,
            $args->link_before,
            apply_filters( 'the_title', $item->title, $item->ID ),
            $args->link_after,
            $args->after
        );

        $output .= apply_filters( 'walker_nav_menu_start_el', $item_output, $item, $depth, $args );
    }
}