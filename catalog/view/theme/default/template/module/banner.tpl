<div id="banner<?php echo $module; ?>" class="owl-carousel hidden-xxs">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive slide-img" id="<?php echo $banner['sort_order']; ?>"/></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive slide-img" id="<?php echo $banner['sort_order']; ?>"/>
    <?php } ?>
  </div>
  <?php } ?>
</div>


<script type="text/javascript">

$(document).ready(function() {

var owl = $("#banner<?php echo $module; ?>");

var positionToList = $('.category-page').attr('id');

// console.log(positionToList);

owl.owlCarousel({
 items:6,
 autoPlay: false,
 singleItem: true,
 navigation: false,
 pagination: false,
 mouseDrag: false,
 touchDrag: false,
 transitionStyle: 'fade'
});

$(".slide-img").on("lock", function(){
  
owl.trigger('owl.jumpTo', positionToList);
  });

$(".slide-img").trigger("lock");

});

</script>
