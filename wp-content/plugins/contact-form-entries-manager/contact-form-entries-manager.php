<?php
/*
Plugin Name: Contact Form Entries Manager
Description: Store and manage contact form submissions with pagination, CSV export, and delete options.
Version: 1.1
Author: Vanith (Senior Developer at Digital Distribution Solutions)
*/

if (!defined('ABSPATH')) exit;

// 🧱 CREATE TABLE
function cfe_create_table() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'contact_form_entries';
    $charset_collate = $wpdb->get_charset_collate();

    $sql = "CREATE TABLE $table_name (
        id mediumint(9) NOT NULL AUTO_INCREMENT,
        name varchar(200) NOT NULL,
        email varchar(200) NOT NULL,
        company varchar(200) DEFAULT '' NOT NULL,
        message text NOT NULL,
        created_at datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
        PRIMARY KEY (id)
    ) $charset_collate;";

    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);
}
register_activation_hook(__FILE__, 'cfe_create_table');

// 🧭 ADMIN MENU
function cfe_add_admin_menu() {
    add_menu_page(
        'Contact Form Entries',
        'Contact Form',
        'manage_options',
        'contact-form-entries',
        'cfe_display_admin_page',
        'dashicons-email-alt2',
        26
    );
}
add_action('admin_menu', 'cfe_add_admin_menu');

// 🧹 HANDLE BULK OR SINGLE DELETE
function cfe_handle_delete_actions() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'contact_form_entries';

    // Single delete
    if (isset($_GET['action']) && $_GET['action'] === 'delete' && isset($_GET['entry'])) {
        $entry_id = absint($_GET['entry']);
        check_admin_referer('cfe_delete_entry_' . $entry_id);
        $wpdb->delete($table_name, ['id' => $entry_id]);
        wp_redirect(admin_url('admin.php?page=contact-form-entries&deleted=1'));
        exit;
    }

    // Bulk delete
    if (isset($_POST['bulk_delete']) && !empty($_POST['entry_ids'])) {
        check_admin_referer('cfe_bulk_delete');
        $ids = array_map('absint', $_POST['entry_ids']);
        $ids_placeholders = implode(',', array_fill(0, count($ids), '%d'));
        $wpdb->query($wpdb->prepare("DELETE FROM $table_name WHERE id IN ($ids_placeholders)", $ids));
        wp_redirect(admin_url('admin.php?page=contact-form-entries&bulk_deleted=1'));
        exit;
    }
}
add_action('admin_init', 'cfe_handle_delete_actions');

// 🧾 DISPLAY ADMIN PAGE
function cfe_display_admin_page() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'contact_form_entries';

    $per_page = 10;
    $page = isset($_GET['paged']) ? absint($_GET['paged']) : 1;
    $offset = ($page - 1) * $per_page;
    $total = $wpdb->get_var("SELECT COUNT(*) FROM $table_name");
    $results = $wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name ORDER BY created_at DESC LIMIT %d OFFSET %d", $per_page, $offset));

    // CSV export
    if (isset($_GET['export_csv']) && $_GET['export_csv'] == 1) {
        cfe_export_csv();
        exit;
    }

    // Success message
    if (isset($_GET['deleted'])) echo '<div class="updated notice"><p>Entry deleted successfully.</p></div>';
    if (isset($_GET['bulk_deleted'])) echo '<div class="updated notice"><p>Selected entries deleted successfully.</p></div>';
    ?>

    <div class="wrap">
        <h1>📬 Contact Form Entries</h1>

        <div style="margin: 15px 0;">
            <a href="<?php echo admin_url('admin.php?page=contact-form-entries&export_csv=1'); ?>" class="button button-primary">Export to CSV</a>
        </div>

        <form method="post">
            <?php wp_nonce_field('cfe_bulk_delete'); ?>
            <table class="widefat fixed striped">
                <thead>
                    <tr>
                        <th style="width:30px;"><input type="checkbox" id="select-all"></th>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Company</th>
                        <th>Message</th>
                        <th>Date</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if ($results) : ?>
                        <?php foreach ($results as $row) : ?>
                            <tr>
                                <td><input type="checkbox" name="entry_ids[]" value="<?php echo esc_attr($row->id); ?>"></td>
                                <td><?php echo esc_html($row->id); ?></td>
                                <td><?php echo esc_html($row->name); ?></td>
                                <td><a href="mailto:<?php echo esc_html($row->email); ?>"><?php echo esc_html($row->email); ?></a></td>
                                <td><?php echo esc_html($row->company); ?></td>
                                <td><?php echo esc_html($row->message); ?></td>
                                <td><?php echo esc_html(date('M d, Y h:i A', strtotime($row->created_at))); ?></td>
                                <td>
                                    <a href="<?php echo wp_nonce_url(admin_url('admin.php?page=contact-form-entries&action=delete&entry=' . $row->id), 'cfe_delete_entry_' . $row->id); ?>" class="button button-small delete-entry" onclick="return confirm('Are you sure you want to delete this entry?');">🗑️ Delete</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    <?php else : ?>
                        <tr><td colspan="8">No entries found.</td></tr>
                    <?php endif; ?>
                </tbody>
            </table>

            <div style="margin-top:10px;">
                <input type="submit" name="bulk_delete" class="button button-secondary" value="Delete Selected" onclick="return confirm('Delete selected entries?');">
            </div>
        </form>

        <?php
        // Pagination
        $total_pages = ceil($total / $per_page);
        if ($total_pages > 1) {
            echo '<div class="tablenav"><div class="tablenav-pages">';
            echo paginate_links(array(
                'base' => add_query_arg('paged', '%#%'),
                'format' => '',
                'prev_text' => '&laquo;',
                'next_text' => '&raquo;',
                'total' => $total_pages,
                'current' => $page
            ));
            echo '</div></div>';
        }
        ?>
    </div>

    <script>
        document.getElementById('select-all')?.addEventListener('click', function() {
            const checkboxes = document.querySelectorAll('input[name="entry_ids[]"]');
            checkboxes.forEach(cb => cb.checked = this.checked);
        });
    </script>
    <?php
}

// 📤 CSV EXPORT
function cfe_export_csv() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'contact_form_entries';
    $results = $wpdb->get_results("SELECT * FROM $table_name ORDER BY created_at DESC", ARRAY_A);

    if (empty($results)) {
        wp_die('No data to export.');
    }

    header('Content-Type: text/csv; charset=utf-8');
    header('Content-Disposition: attachment; filename=contact_form_entries_' . date('Y-m-d') . '.csv');
    $output = fopen('php://output', 'w');
    fputcsv($output, array('ID', 'Name', 'Email', 'Company', 'Message', 'Created At'));
    foreach ($results as $row) {
        fputcsv($output, $row);
    }
    fclose($output);
    exit;
}

// 💾 INSERT ENTRY (from your contact form handler)
function cfe_insert_entry($data) {
    global $wpdb;
    $table_name = $wpdb->prefix . 'contact_form_entries';
    $wpdb->insert(
        $table_name,
        array(
            'name'    => sanitize_text_field($data['name']),
            'email'   => sanitize_email($data['email']),
            'company' => sanitize_text_field($data['company']),
            'message' => sanitize_textarea_field($data['message']),
        )
    );
}
