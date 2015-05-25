<?php
    function add_menu_custom_pages(){
        add_menu_page('List "Request Callback"', 'List "Request Callback"', 'manage_options', 'callback_page_menu', 'callback_page_menu_render');
    }
    add_action('admin_menu', 'add_menu_custom_pages');

    function callback_page_menu_render() {
        global $title;
        global $wpdb;
        $table_name = $wpdb->prefix . 'request_callback';

        echo '<link rel="stylesheet" type="text/css" href="' . get_template_directory_uri() . '/css/bootstrap.min.css" />';
        echo '<script src="' . get_template_directory_uri() . '/js/bootstrap.min.js"></script>';

        $results = $wpdb->get_results('SELECT `id`, `name`, `phone`, `date`, `valid` FROM ' . $table_name . ' ORDER BY `date` DESC');
?>
        <h2><?php echo $title; ?></h2>

        <?php if(!empty($results)) { ?>
            <div class="table-responsive">
                <table class="table table-striped">
                    <tr>
                        <th>Name</th>
                        <th>Phone number</th>
                        <th>Date</th>
                    </tr>
                    <?php foreach($results as $result) { ?>
                        <tr <?php echo (empty($result->valid) || $result->valid == 0) ? 'class="warning"' : ''; ?> >
                            <td><?php echo (!empty($result->name)) ? $result->name : ''; ?></td>
                            <td><?php echo (!empty($result->phone)) ? $result->phone : ''; ?></td>
                            <td><?php echo (!empty($result->date)) ? $result->date : ''; ?></td>
                        </tr>
                    <?php } ?>
                </table>
            </div>
        <?php } else { ?>
            No data.
        <?php } ?>

<?php
    }

    add_action('wp_ajax_ajax_callback_form', 'ajax_callback_form_callback');
    add_action('wp_ajax_nopriv_ajax_callback_form', 'ajax_callback_form_callback');
    function ajax_callback_form_callback(){
        if (!wp_verify_nonce($_POST['nonce'], 'request_submit_nonce')) {
            exit('You have no access here.');
        }

        global $wpdb;
        $table_name = $wpdb->prefix . 'request_callback';

        if($wpdb->get_var('SHOW TABLES LIKE ' . $table_name) != $table_name) {
            $sql = 'CREATE TABLE '.$table_name.'(
                        `id` INTEGER(10) UNSIGNED AUTO_INCREMENT,
                        `name` VARCHAR(50),
                        `phone` VARCHAR(25),
                        `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        `valid` INTEGER(1) NOT NULL DEFAULT 1,
                        PRIMARY KEY (`id`))';

            require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
            dbDelta($sql);
        }

        $wpdb->insert($table_name, array('name' => $_POST['name'], 'phone' => $_POST['phone']));

        $to = get_option('admin_email');
        $subject = 'Request a callback from "' . get_option('blogname') . '"';
        $message = '<p>Name: ' . $_POST['name'] . '</p><p>Phone number: ' . $_POST['phone'] . '</p>';
        $headers[] = 'MIME-Version: 1.0';
        $headers[] = 'Content-Type: text/html; charset=ISO-8859-1';
        wp_mail($to, $subject, $message, $headers);

        echo 'Data has been successfully sended.';
        exit();
    }





