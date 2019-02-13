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
<div class="row alert_block"></div>
<div class="container-fluid product_page" itemscope itemtype="http://schema.org/Product">
  <h2 class="col-sm-10 col-sm-offset-2"><strong itemprop="name"><?php echo $heading_title; ?></strong></h2>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-10 col-sm-offset-2'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-5'; ?>
        <?php } ?>
<!-- /////////////////////////ZOOOOOOOOOOOOOOOOOOMMMMYYYYYYY//////////////////////////////// -->
<!--         <div class="<?php echo $class; ?>">
          <?php if ($thumb || $images) { ?> 
          <?php if ($thumb) { ?>
            <a class="zoom" href="<?php echo $zoom; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/></a>
            <?php } ?> 
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <a class="zoom" href="<?php echo $image['zoom']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/></a>
            <?php } ?>
            <?php } ?>
        
        <?php } ?> 
         
        </div> -->
<!-- /////////////////////////ZOOOOOOOOOOOOOOOOOOMMMMYYYYYYY//////////////////////////////// -->
                <div class="<?php echo $class; ?>">
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img itemprop="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img itemprop="image" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
         
        </div>


        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-7'; ?>
        <?php } ?>
 <div class="<?php echo $class; ?>">
      <div class="row">
        <div class="col-md-12">

          <ul class="col-md-12 articul">

            <li><span><?php echo $text_model; ?></span> <?php echo $model; ?></li>

          </ul>

          <?php if ($price) { ?>

          <ul class="col-md-10 col-sm-12 col-xs-12 price-list-block">

            <?if($GLOBALS["customer_location"]==='UA'){?>

                <?if ($logged){?>
                    <li class="col-md-6 col-sm-12 col-xs-12">
                      <h2 style="color: #333; font-size: 24px; margin: 0 0;"><?php echo $text_price; ?><span style="color:red; font-weight: bold;" ><?php echo $price; ?></span></h2>
                    </li>
          <? } else { ?>
            <li class="col-md-6 col-sm-12 col-xs-12 click-to-go">
              <span></span><a href="<?php echo $register; ?>"><?php echo $text_show_price; ?></a>
            </li><?}?>

            <?}?>

            <?if($GLOBALS["customer_location"]==='UA'){?>
            <li class="col-md-6 col-sm-12 col-xs-12 click-to-show">
              <p id="data_p" data-href="<?=$link_to_wholesale_ukr?>"><span></span><?php echo $text_show_price_opt; ?></p>
            </li>
            <? } else { ?>
            <li class="col-md-6 col-sm-12 col-xs-12 click-to-show">
              <p id="data_p" data-href="<?=$link_to_wholesale?>"><span></span><?php echo $text_show_price_opt; ?></p>
            </li>
            <?}?>


            
          </ul>
</div>
</div>


<div id="modal_form" class="col-md-9 pop-up-price">
                   <span id="modal_close" class="modal_close"></span> 
                   <h3><?php echo $request_current_price; ?> </h3>  
 <hr style="margin-top: 10px; margin-bottom: 20px; border-top: 1px solid #ddd;">

         <form action="#" class="col-md-12">

                    <div class="col-md-12">
                                      
                      

                      <label for="name" class="price-form-label"><span><?php echo $text_prev_name; ?></span></label> <input type="text" id="name" class="price-form-input-name" value="<?php echo $text_name; ?>">

                                          <input type="checkbox" id="check1" class="price-form-input"><label for="check1" class="price-form-label">
                                          <span></span><?php echo $text_whith_photo; ?></label>
                                        
                    </div>             
         
                <div class="col-md-12 buttons-block">    

                      <div class="col-md-12">



                              <div id="button-cancel"><a id="downloading" class="btn-checkout-product"><?php echo $button_request; ?></a></div>
                       </div>   

                </div>

        </form>



                  

  </div>

          <div class="col-md-9 pop-up-price-result text-center" id="result_to_group2">

            <span id="close_result" class="modal_close"></span> 

<h3><?php echo $request_current_price; ?> </h3> 
  <hr style="margin-top: 10px; margin-bottom: 20px; border-top: 1px solid #ddd;"> 
          
           <span class="stop_download"><b><? echo $text_wait_for; ?></b></span>

        </div>

          <?php } ?>
  
       
 <div id="product">

 <?if($GLOBALS["customer_location"]==='UA'){?> 
   <?php if ($options) { ?>

       <?php foreach ($options as $option) { ?>


            <?php if ($option['type'] == 'radio') { ?>

            <div class="row">

            

            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">

              <div id="input-option<?php echo $option['product_option_id']; ?>" class="col-md-7 col-sm-12  col-xs-12 form-size">

                <h3><?php echo $text_option_size; ?></h3>

                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <input type="radio" id="<?php echo $option_value['product_option_value_id']; ?>" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>"/>
                  <label for="<?php echo $option_value['product_option_value_id']; ?>" class="col-md-3 col-sm-6 col-xs-6"><span><?php echo $option_value['name']; ?><?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?></span></label>
                    </div>
                <?php } ?>
              </div>
            </div>
            </div>
            <?php } ?>


        <?php } ?>
    <?php } ?>


            <div class="row">
            <div class="form-group col-md-10">

              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br /> 
              <div class="shopping col-md-6">
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn-shopping-product"><?php echo $button_cart; ?></button></div>
              <div class="checkout col-md-6">
               <div class="btn-checkout-product"><a href="<?php echo $checkout; ?>"><?php echo $button_checkout; ?></a></div>
              </div>
            </div>
            </div>

  <? } ?>

       

  </div>
<!-- end div PRODUCT -->

                                <!-- description block -->
          <div class="col-md-12 table-description">

            <div id="tab-description" itemprop="description"><?php echo $description; ?></div>
          </div>
          <!-- desc end -->
     </div>


 </div>
      <?php if ($products) { ?>
      <h3><?php echo $text_related; ?></h3>
      <div class="row">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
        <?php } else { ?>
        <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb transition related_prod">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
<!--               <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?> -->
            </div>
<!--             <div class="button-group">
              <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
            </div> -->
          </div>
        </div>
<!--         <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif ($i % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?> -->
  <?php } ?>
      </div>
      <?php } ?>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>

</div>






<script type="text/javascript">

<!--



$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger  col-sm-12">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger  col-sm-12">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger  col-sm-12">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.alert_block').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html(json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger col-sm-12">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
     // console.log('dddddds<?=$link_to_wholesale?>');

	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>

<script>

  $(document).ready(function() { 

var groupIdCustom = '<? echo $group?>';



  console.log(groupIdCustom);

    if('<?=$group?>' > '2' && '<?=$group?>' != '10'){
  $('.click-to-show').click( function(event){ 
    event.preventDefault(); 
        $('.pop-up-price') 
          .css('display', 'block')
          .animate({opacity: 1}, 400); 
    });




  $('#modal_close, #button-cancel').click( function(){
    $('.pop-up-price')
      .animate({opacity: 0}, 400,
        function(){ 
          $(this).css('display', 'none');
        }
      );
  });

  } else if ('<?=$group?>' == '2'){

$('.click-to-show').click( function(event){ 
            event.preventDefault(); 
                $('.pop-up-price') 
                  .css('display', 'block')
                  .animate({opacity: 1}, 400); 

                       });

        $('#button-cancel').on("click", function(event){
            event.preventDefault(); 
            $('#result_to_group2').css('display', 'block')
                  .animate({opacity: 1}, 400); 
           });


       $('#close_result').click( function(){
console.log("click");
$('.pop-up-price, .pop-up-price-result')
      .animate({opacity: 0}, 400,
        function(){ 
          $(this).css('display', 'none');
        }
      );
  });  



  $('#modal_close, #button-cancel').click( function(){
    $('.pop-up-price')
      .animate({opacity: 0}, 400,
        function(){ 
          $(this).css('display', 'none');
        }
      );
  });





 } else {


   $('.click-to-show').on("click", function() {

     location.href = $('#data_p').attr('data-href');

  });

  }

});

</script>

<script>

var widthTable = $('.table-description table').width();
var widthTableBlock = $('.table-description').width();

console.log(widthTable, widthTableBlock)

if (widthTable > widthTableBlock) {

  $('.table-description table').wrap("<div class='size-table'></div>");
  $('.size-table').find('tr:first td').addClass('table-description-thead').css({

    'background' : '#ddd',
    'color' : "#fff"
  });


}else{

   $('.table-description table').find('tr:first td').addClass('table-description-thead').css({

    'background' : '#ddd',
    'color' : "#fff"
  });

}

 

</script>

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

$('#check1').click(function(){
   if (clickEvent==0){

$('#downloading').attr('href','/image/catalog/prices/price_foto_'+groupLabel+'.xls');
    clickEvent=1;

}
else {
console.log("with out foto))");
$('#downloading').attr('href','/image/catalog/prices/price_'+groupLabel+'.xls');
clickEvent=0;
}
});

});

</script>




<?php echo $footer; ?>
