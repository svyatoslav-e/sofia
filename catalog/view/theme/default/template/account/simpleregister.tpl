<?php if (!$ajax && !$popup && !$as_module) { ?>
<?php $simple_page = 'simpleregister'; include $simple_header; ?>
<div class="simple-content">
<?php } ?>
    <?php if (!$ajax || ($ajax && $popup)) { ?>
    <script type="text/javascript">
    (function($) {
    <?php if (!$popup && !$ajax) { ?>
        $(function(){
    <?php } ?>
            if (typeof Simplepage === "function") {
                var simplepage = new Simplepage({
                    additionalParams: "<?php echo $additional_params ?>",
                    additionalPath: "<?php echo $additional_path ?>",
                    mainUrl: "<?php echo $action; ?>",
                    mainContainer: "#simplepage_form",
                    useAutocomplete: <?php echo $use_autocomplete ? 1 : 0 ?>,
                    useGoogleApi: <?php echo $use_google_api ? 1 : 0 ?>,
                    scrollToError: <?php echo $scroll_to_error ? 1 : 0 ?>,
                    javascriptCallback: function() {<?php echo $javascript_callback ?>}
                });

                simplepage.init();
            }
    <?php if (!$popup && !$ajax) { ?>
        });
    <?php } ?>
    })(jQuery || $);
    </script>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="simplepage_form">
        <div class="simpleregister" id="simpleregister">
            <p class="simpleregister-have-account"><?php echo $text_account_already; ?></p>
            <?php if ($error_warning) { ?>
            <div class="warning alert alert-danger"><?php echo $error_warning; ?></div>
            <?php } ?>
            <div class="simpleregister-block-content">
                <?php foreach ($rows as $row) { ?>
                  <?php echo $row ?>
                <?php } ?>
                <?php foreach ($hidden_rows as $row) { ?>
                  <?php echo $row ?>
                <?php } ?>
            </div>
            <div class="simpleregister-button-block buttons">
                <div class="simpleregister-button-right col-xs-12 col-sm-6 col-md-6">
                    <?php if ($display_agreement_checkbox) { ?><span id="agreement_checkbox"><label><input type="checkbox" name="agreement" value="1" <?php if ($agreement == 1) { ?>checked="checked"<?php } ?> /><?php echo $text_agreement; ?></label>&nbsp;</span><?php } ?>
                    <a class="btn-shopping-product" data-onclick="submit" id="simpleregister_button_confirm"><span><?php echo $button_continue; ?></span></a>
                </div>
            </div>
        </div>
        <?php if ($redirect) { ?>
            <script type="text/javascript">
                location = "<?php echo $redirect ?>";
            </script>
        <?php } ?>
    </form>
<?php if (!$ajax && !$popup && !$as_module) { ?>
</div>
 <script type="text/javascript">


$(document).ready(function (){

    var special =  getCookie('registration');

    var localCountry = "<?=$GLOBALS['customer_location']?>";

    // console.log(localCountry);


   // console.log(special); // $('.radio input:checked').removeAttr('checked');



if(localCountry === 'UA' && special === 'here'){
   $("#register_customer_group_id_2").trigger('click');
   console.log('1+1');
}else if(localCountry === 'UA' && special !== 'here'){
   $("#register_customer_group_id_10").attr('checked','checked');
   console.log('1+0');

}else if(localCountry !== 'UA' && special === 'here'){
   $("#register_customer_group_id_2").trigger('click');
      console.log('0+1');
}
 deleteCookie('registration');


});





</script>

<?php include $simple_footer ?>
<?php } ?>


