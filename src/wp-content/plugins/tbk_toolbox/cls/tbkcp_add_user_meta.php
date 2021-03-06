<?php
/*
Description: Adds user meta from a comma separated string in the form settings
Author: Paul MacLean
Usage: 
1. Click the settings link after enabling to see the form options
2. Add the comma seperated user meta labels ex (Twitter,Postal Code)
3. Usage outside the loop:  echo get_user_meta($current_user->ID, 'your-label', true))
*/

define('TBKCP_USER_META_PRE', 'tbkcp_user_meta_');

class tbkcp_add_user_meta{
    /*
      Function: __construct
      Adds the user profile show and edit actions
     */

    function __construct() {
        add_action('show_user_profile', array(&$this, 'user_profile_edit_action'));
        add_action('edit_user_profile', array(&$this, 'user_profile_edit_action'));
        add_action('personal_options_update', array(&$this, 'user_profile_update_action'));
        add_action('edit_user_profile_update', array(&$this, 'user_profile_update_action'));
    }

    /*
      Function: user_profile_edit_action
      Shows the new labels in the user settings based on the inputted string in the form options
     */

    function user_profile_edit_action($user) {
        $meta_labels = get_option(TBKCP_USER_META_PRE . 'labels');
        $meta_labels = explode(',', $meta_labels);
        ?>
        <h3>Additional User Information</h3>
        <table class ="form-table">

            <tbody>
                <?php
                foreach ($meta_labels as $meta_label) {
                    $meta_id = sanitize_title($meta_label);
                    ?>
                    <tr>
                        <th><label for="<?php echo $meta_id ?>"> <?php echo $meta_label ?> </label></th>
                        <td><input name="<?php echo $meta_id ?>" type="text" id="<?php echo $meta_id ?>" value ="<?php echo $user->$meta_id ?>" /></td>
                    </tr>
                    <?php
                }
                ?>
            </tbody>
        </table>
        <?php
    }

    /*
      Function: user_profile_update_action
      Updates the user profile settings with the new user meta
     */

    function user_profile_update_action($user_id) {
        $meta_labels = get_option(TBKCP_USER_META_PRE . 'labels');
        $meta_labels = explode(',', $meta_labels);
        foreach ($meta_labels as $meta_label) {
            $meta_id = sanitize_title($meta_label);
            if ($_POST["$meta_id"]) {
                update_user_meta($user_id, $meta_id, $_POST["$meta_id"]);
            }
        }
    }

    /*
      Function: form_options
      Allows admins to specify new user meta with a comma seperated string
     */

    function form_options() {
        // Form Handling
        ?>
        <p>Add a comma separated string to add user meta. Slugs generated by sanitize_title() </p>
        <?php
        if (isset($_POST[TBKCP_USER_META_PRE . "update"])) {

            //Update the dimensions
            if (isset($_POST[TBKCP_USER_META_PRE . "labels"])) {
                update_option(TBKCP_USER_META_PRE . 'labels', $_POST[TBKCP_USER_META_PRE . 'labels']);
            }
        }
        // Form Options Markup
        ?>
        <div id ="admin_logo_options_wrap" style ="width:400px;position:relative;">
            <h3>User Meta Labels</h3>
            <input style ="width:300px;" type ="text" name ="<?php echo TBKCP_USER_META_PRE . 'labels' ?>" value ="<?php echo get_option(TBKCP_USER_META_PRE . 'labels') ?>" />
            <input name ="<?php echo TBKCP_USER_META_PRE . 'update' ?>" type ="submit" class ="button-primary" value ="Update User Meta Labels"/>
        </div>
        <?php
    }

}
?>
