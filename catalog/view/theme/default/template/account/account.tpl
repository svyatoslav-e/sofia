<?php echo $header; ?>
<div class="container-fluid breadcrumb-block">
<div class="col-sm-10 col-sm-offset-2">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
</div>
</div>
<div class="container">
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-10 col-sm-offset-2'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>


      <h2><?php echo $text_my_account; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
        <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
<!--         <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
        <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li> -->
      </ul>
            <?if($GLOBALS["customer_location"]==='UA'){?>
      <h2><?php echo $text_my_orders; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <!--   <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
        <?php if ($reward) { ?>
        <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li> -->
<!--         <?php } ?> -->
<!--         <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
        <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li> -->
      </ul>
      <?}?>
<!--       <h2><?php echo $text_my_newsletter; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul> -->

<?if ($group == 10) {?>

            <?if($GLOBALS["customer_location"]==='UA'){?>
            <li class="col-md-4 col-sm-4 col-xs-12">
              <a href="<?=$link_to_wholesale_ukr?>" class="btn-checkout-product"><span></span>Узнать оптовые цены</a>
            </li>
            <? } else { ?>
            <li class="col-md-4 col-sm-4 col-xs-12">
              <a href="<?=$link_to_wholesale?>" class="btn-checkout-product"><span></span>Узнать оптовые цены</a>
            </li>
            <?}?>

<?}else if ($group == 2){?>

<div class="col-xs-4">
    <div class="row">
     <div id="button-cancel"><p class="btn-checkout-product">Статус оптового клиента на рассмотрении</p></div>
    </div>

</div>


<?}else{?>

<div class="col-xs-4">
    <div class="row">
     <div id="button-cancel"><a id="downloading" class="btn-checkout-product red_btn_down"><?php echo $button_request; ?></a></div>
    </div>

</div>

<div class="col-xs-offset-2 col-xs-4">
    <div class="row">
     <div id="button-cancel"><a id="downloading_foto" class="btn-checkout-product"><?php echo $button_request; ?> c ФOTO</a></div>
    </div>

</div> 

<?}?>





      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>


</div>
<?php echo $footer; ?>


<script>
  $(document).ready(function() {

  var clickEvent=0;

  var groupNum = '<? echo $group?>';

  var groupLabel = '';

  var groupIdent = function(num){

    switch(num) {
  case '3':  
    groupLabel ="KO_UA";
    break

  case '4':  
    groupLabel ="OP_UA";
    break

    case '5':  
    groupLabel ="SP_UA";
    break

    case '6':  
    groupLabel ="DS_UA";
    break

    case '7':  
    groupLabel = "KO_RU";
    break

    case '8':  
    groupLabel ="OP_RU";
    break

    case '9':  
    groupLabel ="SP_RU";
    break

}

  };


   groupIdent(groupNum);

  console.log(groupLabel);
  

$('#downloading').attr('href','/image/catalog/prices/price_'+groupLabel+'.xls');

$('#downloading_foto').attr('href','/image/catalog/prices/price_foto_'+groupLabel+'.xls');

});

 

</script>