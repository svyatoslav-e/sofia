<?php echo $header; ?>
<div class="container-fluid breadcrumb-block">
  <div class="col-sm-offset-2">
    <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
</div>
<div class="container-fluid contact_page">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
      <?php $class = 'col-sm-10 col-sm-offset-2'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <!--     <h3><?php echo $text_location; ?></h3> -->
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            <!--  <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <div class="col-sm-3"><strong><?php echo $store; ?></strong><br /> -->
            <!--     <address>
              <?php echo $address; ?>
              </address> -->
            <!--  <?php if ($geocode) { ?>
              <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
              <?php } ?>
            </div> -->
            <!--             <div class="col-sm-3"><strong><?php echo $text_telephone; ?></strong><br>
              <?php echo $telephone; ?><br /><p><?php echo $text_telephone_name; ?></p>
              <br />
              <?php if ($fax) { ?>
              <strong><?php echo $text_fax; ?></strong><br>
              <?php echo $fax; ?>
              <?php } ?>
            </div> -->
            <div class="col-sm-12">
              <!--               <?php if ($open) { ?>
              <strong><?php echo $text_open; ?></strong><br />
              <?php echo $open; ?><br />
              <br />
              <?php } ?> -->
              <?if($GLOBALS["customer_location"]==='UA'){?>

                <?php if ($comment) { ?>
                  <div class="col-sm-6 form_mass">
                    <strong><?php echo $text_comment; ?></strong><br />
                    <p><?php echo $comment; ?></p>
                  </div>
                <?php } ?>


                <?php if ($comment2) { ?>
                  <div class="col-sm-6">
                    <strong><?php echo $text_comment2; ?></strong><br />
                    <p><?php echo $comment2; ?></p>
                  </div>
                <?php } ?>

              <?php } else { ?>

                <?php if ($comment3) { ?>
                  <div class="col-sm-12">
                    <strong><?php echo $text_comment2; ?></strong><br />
                    <p><?php echo $comment3; ?></p>
                  </div>
                <?php } ?>

              <?php } ?>

            </div>
          </div>
        </div>
      </div>
      <?php if ($locations) { ?>
        <h3><?php echo $text_store; ?></h3>
        <div class="panel-group" id="accordion">
          <?php foreach ($locations as $location) { ?>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
              </div>
              <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
                <div class="panel-body">
                  <div class="row">
                    <?php if ($location['image']) { ?>
                      <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                    <?php } ?>
                    <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                      <address>
                        <?php echo $location['address']; ?>
                      </address>
                      <?php if ($location['geocode']) { ?>
                        <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                      <?php } ?>
                    </div>
                    <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                      <?php echo $location['telephone']; ?><br />
                      <br />
                      <?php if ($location['fax']) { ?>
                        <strong><?php echo $text_fax; ?></strong><br>
                        <?php echo $location['fax']; ?>
                      <?php } ?>
                    </div>
                    <div class="col-sm-3">
                      <?php if ($location['open']) { ?>
                        <strong><?php echo $text_open; ?></strong><br />
                        <?php echo $location['open']; ?><br />
                        <br />
                      <?php } ?>
                      <?php if ($location['comment']) { ?>
                        <strong><?php echo $text_comment; ?></strong><br />
                        <?php echo $location['comment']; ?>
                      <?php } ?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          <?php } ?>
        </div>
      <?php } ?>

      <?if($GLOBALS["customer_location"]==='UA'){?>
        <div class="col-xs-12 col-sm-6 form_mass">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
            <fieldset>
              <legend><b><?php echo $text_contact; ?></b></legend>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                  <?php if ($error_name) { ?>
                    <div class="text-danger"><?php echo $error_name; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                  <?php if ($error_email) { ?>
                    <div class="text-danger"><?php echo $error_email; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
                <div class="col-sm-10">
                  <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                  <?php if ($error_enquiry) { ?>
                    <div class="text-danger"><?php echo $error_enquiry; ?></div>
                  <?php } ?>
                </div>
              </div>
              <input type="hidden" name="wholesale" value="false">
            </fieldset>
            <div class="buttons">
              <div class="pull-right col-xs-12 col-sm-6">

                <input class="hidden" type="submit" value="<?php echo $button_submit; ?>" id="send_sms5" />

                <label class="btn-checkout" for="send_sms5"><?php echo $text_sendsms; ?></label>



              </div>
            </div>
          </form>
        </div>


        <!--OPT  -->
        <div class="col-xs-12 col-sm-6">

          <form action="<?php echo $action; ?>" method="post" class="form-horizontal">

            <fieldset>
              <legend><b><?php echo $text_contact2; ?></b> </legend>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-name2"><?php echo $entry_name; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="name" value="<?php echo $name; ?>" id="input-name2" class="form-control" />
                  <?php if ($error_name2) { ?>
                    <div class="text-danger"><?php echo $error_name2; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-email2"><?php echo $entry_email; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="email" value="<?php echo $email; ?>" id="input-email2" class="form-control" />
                  <?php if ($error_email2) { ?>
                    <div class="text-danger"><?php echo $error_email2; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-enquiry2"><?php echo $entry_enquiry; ?></label>
                <div class="col-sm-10">
                  <textarea name="enquiry" rows="10" id="input-enquiry2" class="form-control"><?php echo $enquiry; ?></textarea>
                  <?php if ($error_enquiry2) { ?>
                    <div class="text-danger"><?php echo $error_enquiry2; ?></div>
                  <?php } ?>
                </div>
              </div>
              <input type="hidden" name="wholesale" value="true">

            </fieldset>
            <div class="buttons">
              <div class="pull-right col-xs-12 col-sm-6">

                <input class="hidden" type="submit" value="<?php echo $button_submit; ?>" id="send_sms10" />

                <label class="btn-checkout" for="send_sms10"><?php echo $text_sendsms; ?></label>



              </div>
            </div>
          </form>
        </div>

      <?php }  else { ?>
        <div class="col-xs-12 col-sm-12">
          <form action="" method="post" class="form-horizontal" id="form-opt">
            <fieldset>
              <legend><b><?php echo $text_contact2; ?></b></legend>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-name3"><?php echo $entry_name; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="name2" value="<?php echo $name; ?>" id="input-name3" class="form-control" />
                  <?php if ($error_name) { ?>
                    <div class="text-danger"><?php echo $error_name; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-email3"><?php echo $entry_email; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="email2" value="<?php echo $email; ?>" id="input-email3" class="form-control" />
                  <?php if ($error_email) { ?>
                    <div class="text-danger"><?php echo $error_email; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-enquiry3"><?php echo $entry_enquiry; ?></label>
                <div class="col-sm-10">
                  <textarea name="enquiry2" rows="10" id="input-enquiry3" class="form-control"><?php echo $enquiry; ?></textarea>
                </div>
              </div>

            </fieldset>
            <div class="buttons">
              <div class="pull-right col-xs-12 col-sm-6">

                <input class="hidden" type="submit" value="<?php echo $button_submit; ?>" id="send_sms3" />

                <label class="btn-checkout" for="send_sms3"><?php echo $text_sendsms; ?></label>



              </div>
            </div>
          </form>
        </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script>
  $("#form-opt").validate({
    // Specify the validation rules
    rules: {
      name2: "required",
      email2: {required: true, email: true},
      enquiry2:{required: true, minlength: 10}

    },

    // Specify the validation error messages
    messages: {
      name2: "Введите имя",
      email2: "Введите email",
      enquiry2: "Введите сообщение. Минимум 10 символов!"
    },

    submitHandler: function (form) {
      var data = $(form).serialize();

      $.ajax({
        type: "POST",
        url: '<?php echo $action_form; ?>',
        data: data,
        success: function (result) {
          location.href = '<?= $linksuccess; ?>';
        }
      });
    }
  });
</script>
<?php echo $footer; ?>