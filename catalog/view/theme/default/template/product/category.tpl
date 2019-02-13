<?php echo $header; ?>


<!-- <div class="container-fluid breadcrumb-block">
  <div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  </div>
 </div> -->

<div class="category-page" id="<?php echo $sort_order; ?>">
 <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
<!--     <div class="container-fluid banner-image-fl"><?php echo $content_top; ?></div> -->
         <?php if ($thumb) { ?>



        <div class="container-fluid banner-image-fl hidden-xxs parent_for">

                          <? if ($data_categories) {?>

              <? foreach ($data_categories as $data_category) {?>

            <?php if ($data_category['left_cat']) { ?>
                 <?php $class_position = 'left'; ?>
                <?php } else { ?>
                  <?php $class_position = 'right'; ?>
            <?php } ?>


                  <div class="link_category incat position_<?=$class_position?>">
                  <?php if ($data_category['black']) { ?>
                   <p class="black_text"><?=$data_category['black']?></p>
                  <?}?>
                  <?php if ($data_category['red']) { ?>
                   <p class="red_text big_black"><?=$data_category['red']?></p>
                  <?}?>
                  <?php if ($data_category['slogan']) { ?>
                    <hr class="hidden-xs">
                    <p class="slogan hidden-xs"><?=$data_category['slogan']?></p>
                    <hr class="hidden-xs">
                  <?}?>
                  </div>

                  <?}?>

                   <?}?>


        <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" />
        </div>
        <?php } ?>

    <div class="container">

    <div id="content" class="<?php echo $class; ?>">
      <h2><strong><?php echo $heading_title; ?></strong></h2>
<!-- product list -->
<div class="row">
            <div class="row">
              <?php foreach ($products as $product) { ?>
              <div class="product-layout product-list col-xs-12 col-sm-6 col-md-4 col-xl-4">
                <div class="product-thumb">
                  <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                  <div>
                    <div class="caption">
                      <h4><a href="<?php echo $product['href']; ?>"><span class="prdct-a"><?php echo $product['name']; ?></span></a></h4>
                
                    </div>
                  </div>
                </div>
              </div>
              <?php } ?>
            </div>

        <!-- limit block -->
  <!--         <div class="row">-->
  <!--              <div class="text-right hidden-xs col-md-5">-->
  <!--                    <label class="control-label price-form-input-select">--><?php //echo $text_limit; ?><!--</label>-->
  <!--              </div>-->
<!--         <div class="text-left col-xs-12 col-md-7" id="input-limit-block">-->
<!--                     --><?php //foreach ($limits as $index=>$_limits) { ?>
<!--                    --><?//$limit_text=($index!==count($limits)-1)?$_limits['text']:$text_limit_all;?>
<!--                  --><?php //if ($_limits['value'] == $limit) { ?>
<!--                  <input type="radio" id="input-limit_--><?php //echo $_limits['text']; ?><!--" onchange="location = this.value;" value="--><?php //echo $_limits['href']; ?><!-- " checked="checked">-->
<!--                  <label for="input-limit_--><?php //echo $_limits['text']; ?><!--" class="col-xs-4 col-md-1">-->
<!---->
<!--                    --><?php //echo $limit_text; ?><!--</label>-->
<!--                  --><?php //} else { ?>
<!---->
<!--                  <input type="radio" id="input-limit_--><?php //echo $_limits['text']; ?><!--"  onchange="location = this.value;" value="--><?php //echo $_limits['href']; ?><!--">-->
<!--                  <label for="input-limit_--><?php //echo $_limits['text']; ?><!--" class="col-xs-4 col-md-1">--><?php //echo $limit_text; ?><!--</label>-->
<!---->
<!--                  --><?php //} ?>
<!---->
<!--                  --><?php //} ?>
<!---->
<!--        </div> -->
      </div>
      <!-- pagination block -->
      <div class="col-sm-12 text-center"><?php echo $pagination; ?></div>
</div>



      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>

      <?php } ?>


      <?php echo $content_bottom; ?>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($description) { ?>
        <div class="col-sm-12 description_style"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <?php } ?>
      </div>
    <?php echo $column_right; ?></div>


</div> 
<?php echo $footer; ?>
<script type="text/javascript">
  $(function() {

    var autoscroller = [];
    //setting
    autoscroller.hidePagination = 1;
    autoscroller.autoScroll = 0;
    autoscroller.catcher = '#endless';
    autoscroller.delay = 1000;
    //setting

    autoscroller.loading = 1;

    var click_counter = 0;

    var clicks = ~~(Cookies.get('<?=$category_id;?>'));


    $(window).scroll(function() {


      if(inWindow(autoscroller.catcher) && !autoscroller.loading && autoscroller.autoScroll) {

        autoscroller.loading = true;
        $('#endless .fa-refresh').addClass('fa-spin');

        setTimeout(function() {

          $('#endless').trigger('click');

        }, autoscroller.delay);

      }

    });

    if (autoscroller.hidePagination) {
      $('.pagination').hide();
    }


    if ($('.product-grid, .product-list').length) {

      if ($('.pagination').length && !$('.pagination > li:last-child').hasClass('active')) {

        $('#content div.col-sm-6.text-right').hide();

        $('.pagination').parent().before('<div class="col-xs-6 text-center center-block" style="float:none;"><button class="btn-shopping-product" id="endless"  ><?php echo $text_show; ?></button></div>');

        $('#endless').on('click', function(e) {

          click_counter++;

          Cookies.set('<?=$category_id;?>', click_counter);

          var lastProduct = $('.pagination').parent().parent().parent().find('.product-layout:last-child');

          var nextPage = $('ul.pagination li.active').next().find('a:first-child');

          $.ajax({
            url: $(nextPage).attr('href'),
            beforeSend: function(){
              $('#endless .fa-refresh').addClass('fa-spin');
            },
            success: function(data){

              var products = $(data).find('.product-list');

              lastProduct.after(products);






//              if (localStorage.getItem('display') == 'grid') {
//
//                cols = $('#column-right, #column-left').length;
//
//                if (cols == 2) {
//                  $(products).attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
//                } else if (cols == 1) {
//                  $(products).attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12');
//                } else {
//                  $(products).attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12');
//                }
//
//              }


              $('.pagination').html($(data).find('.pagination > *'));

              nextPage = $('ul.pagination li.active').next().find('a:first-child');

              if(click_counter<clicks){
                $(autoscroller.catcher).trigger('click');
              }

              if (nextPage.length == 0){
                $('#endless').remove();
              } else {
                $('#endless .fa-refresh').removeClass('fa-spin');
              }

              autoscroller.loading = 0;
            }
          });

          return false;
        });

        if(clicks){
            $(autoscroller.catcher).trigger('click');
        }

      }
    }


    function inWindow(el){
      if($(el).length) {
        var scrollTop = $(window).scrollTop();
        var windowHeight = $(window).height();
        var offset = $(el).offset();

        if(scrollTop <= offset.top && ($(el).height() + offset.top) < (scrollTop + windowHeight))
          return true;
      }

      return false;
    }

  });

  $(document).ready(function () {
    $('[data-toggle="offcanvas"]').click(function () {
      $('.row-offcanvas').toggleClass('active')
    });
  });
</script>

