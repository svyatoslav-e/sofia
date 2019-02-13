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
  <div class="container inform_page">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-10 col-sm-offset-2'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title[0]; ?></h1>
      <?php echo $description; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>


<script>
    setCookie('registration', 'here', {
        // expires: 120,
        path:'/'
      });
</script>

  <script>
  $(document).ready(function() { 

    if('<?=$logged?>' !== '' && '<?=$GLOBALS["customer_location"]?>'==='UA'){

  $('.ua_yes').css("display", "block")}

  else{
 
 $('.not_ua').css("display", "block")

     }
  });

   // console.log($(data-href));
 </script>

<!-- кнопки для регистрации buttons for registration-->
<!-- <div class="col-md-4 ua_yes"><a class="btn-shopping-product" href="http://style.fly-studio.com.ua/index.php?route=account/simpleregister">Регистрация оптового клиента</a></div>

<div class="col-md-4 not_ua"><a class="btn-shopping-product" href="http://style.fly-studio.com.ua/index.php?route=account/simpleedit">Регистрация оптового клиента</a></div> -->