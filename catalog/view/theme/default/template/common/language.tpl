<?php if (count($languages) > 1) { ?>
<div class="language-block">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
 
    
    <ul class="language-menu row pull-right"  style="margin-right: 9px;">

      <?php foreach ($languages as $language) { ?>

      <li class="lang" id="lang_<?php echo $language['code']; ?>"><a href="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></a></li>
      <?php } ?>

    </ul>

  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>

<div class="pull-left language-mobile">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
  <div class="btn-group mob-btn">
    <button class="btn btn-link dropdown-toggle mob-btn" data-toggle="dropdown">
    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
    <span style="color: #333;"><?php echo $language['name']; ?></span>
    <?php } ?>
    <?php } ?>
    <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_language; ?></span> <i class="fa fa-caret-down"></i></button>
    <ul class="dropdown-menu">
      <?php foreach ($languages as $language) { ?>
      <li id="lang_<?php echo $language['code']; ?>"><a href="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>

<?php } ?>

<script>

    if ('<?=$GLOBALS["customer_location"]?>'!=='UA'){    

      $('.test #lang_uk, .language-mobile #lang_uk').css("display", "none");
    }


</script>


