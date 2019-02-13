<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
    <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>


            <?php if ($banner['left']) { ?>
                 <?php $class_position = 'left'; ?>
                <?php } else { ?>
                  <?php $class_position = 'right'; ?>
            <?php } ?>



                  <div class="link_category  position_<?=$class_position; ?>">
                  <?php if ($banner['title']) { ?>
                   <p class="black_text"><?=$banner['title']?></p>
                  <?}?>
                  <?php if ($banner['titlered']) { ?>
                   <p class="red_text"><?=$banner['titlered']?></p>
                  <?}?>
                  <?php if ($banner['titlesl']) { ?>
                    <hr class="hidden-xs">
                    <p class="slogan hidden-xs"><?=$banner['titlesl']?></p>
                    <hr class="hidden-xs">
                  <?}?>
                  <a href="<?php echo $banner['link']; ?>"><?=$button_view; ?></a>
                  </div>

           


    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive slide-img" id="<?php echo $banner['sort_order']; ?>"/>
    <?php } else { ?>
                      <div class="link_category position_right">
                  <?php if ($banner['title']) { ?>
                   <p class="black_text"><?=$banner['title']?></p>
                  <?}?>
                  <?php if ($banner['titlered']) { ?>
                   <p class="red_text hidden-xs"><?=$banner['titlered']?></p>
                  <?}?>
                  <?php if ($banner['titlesl']) { ?>
                    <hr>
                    <p class="slogan hidden-xs"><?=$banner['titlesl']?></p>
                    <hr>
                  <?}?>
                  </div>

    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive slide-img" id="<?php echo $banner['sort_order']; ?>"/>
    <?php } ?>
  </div>
  <?php } ?>
</div>





<script type="text/javascript"><!--
  var $slideshow=$('#slideshow<?php echo $module; ?>');
  $slideshow.owlCarousel({
	items: 6,
	autoPlay: 6000,
	singleItem: true,
	navigation: false,
	pagination: false,
  mouseDrag: false,
  touchDrag: false,
  addClassActive: true,
  transitionStyle: 'fade'
});

//  $(window).on('scroll', function () {
//    var st =$(window).scrollTop();
//    if(st>0){
//      $slideshow.trigger('owl.stop');
//    } else {
//      $slideshow.trigger('owl.play',4000)
//    }
//  });

--></script>