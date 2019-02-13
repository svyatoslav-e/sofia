<?php if (count($currencies) > 1) { ?>

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
    <ul class="current-menu  col-xs-12 col-sm-12">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li  class="curr"><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?></button></li>
      <?php } else { ?>
      <li  class="curr"><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?></button></li>
      <?php } ?>
      <?php } ?>
    </ul>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>

<?php } ?>
