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

<div class="category-page">


    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div class="container-fluid banner-image-fl"><?php echo $content_top; ?></div>
    <div class="container">

    <div id="content" class="<?php echo $class; ?>">
      <h2><strong><?php echo $heading_title; ?></strong></h2>


<!--     <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr> 
      <?php } ?> -->

      <?php if ($categories) { ?>
<!--       <h3><?php echo $text_refine; ?></h3> -->



      <div class="row">
            <?php foreach ($categories as $category) { ?>

             <?php if ($category['left']) { ?>
                 <?php $class_position = 'left'; ?>
                <?php } else { ?>
                  <?php $class_position = 'right'; ?>
            <?php } ?>


              <div class="col-sm-12 item_category">

                  <div class="link_category position_<?=$class_position?>">
                  <a class="no_back" href="<?php echo $category['href']; ?>">
                  <?php if ($category['string_one']) { ?>
                   <p class="black_text big_black"><?=$category['string_one']?></p>
                  <?}?>
                  <?php if ($category['string_two']) { ?>
                   <p class="red_text big_black"><?=$category['string_two']?></p>
                  <?}?>
                  </a>
                  </div>
                  <div class="banner-image-fl"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['image']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-thumbnail" /></a></div>
              </div>
            <?php } ?>
       </div>

      <?php } ?>




      <?php echo $content_bottom; ?>
<?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10 description_style"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <?php } ?>
      </div>
    <?php echo $column_right; ?></div>

  </div>

<?php echo $footer; ?>


