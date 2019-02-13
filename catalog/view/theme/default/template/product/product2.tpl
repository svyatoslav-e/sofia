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



  <div class="container-fluid product_page">

    <h2 class="col-sm-10 col-sm-offset-2"><strong><?php echo $heading_title; ?></strong></h2>

    <div class="row"><?php echo $column_left; ?>

      <?php if ($column_left && $column_right) { ?>

        <?php $class = 'col-sm-6'; ?>

      <?php } elseif ($column_left || $column_right) { ?>

        <?php $class = 'col-sm-9'; ?>

      <?php } else { ?>

        <?php $class = 'col-sm-12'; ?>

      <?php } ?>

      <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>

        <div class="row">

          <?php if ($column_left && $column_right) { ?>

            <?php $class = 'col-sm-6'; ?>

          <?php } elseif ($column_left || $column_right) { ?>

            <?php $class = 'col-sm-6'; ?>

          <?php } else { ?>

            <?php $class = 'col-sm-10 col-sm-offset-2'; ?>

          <?php } ?>





          <div class="<?php echo $class; ?>">



            <form class="form-horizontal" id="form-review">

              <div id="review"></div>

              <h2><?php echo $text_write; ?></h2>



              <div class="form-group required">

                <div class="col-sm-12">

                  <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>

                  <input type="text" name="name" value="" id="input-name" class="price-form-input" />

                </div>

              </div>

              <div class="form-group required">

                <div class="col-sm-12">

                  <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>

                  <textarea name="text" rows="5" id="input-review" class="price-form-input"></textarea>

                  <div class="help-block"><?php echo $text_note; ?></div>

                </div>

              </div>

              <div class="form-group required">

                <div class="col-sm-12">



                  <div class="radio">



                    <div class="col-sm-12 text-center"><label class="control-label control-label-form"><b><?php echo $entry_rating; ?></b></label></div>



                    <div class="col-sm-4" style="text-align: right;"> <?php echo $entry_bad; ?></div>



                    <div>

                      <input type="radio" name="rating" value="1" id="rating_1"/>

                      <label for="rating_1" class="col-sm-1 col-xs-12"><span style="border-radius: 15px;">1</span></label>

                    </div>



                    <div>

                      <input type="radio" name="rating" value="2" id="rating_2"/>

                      <label for="rating_2" class="col-sm-1 col-xs-12"><span style="border-radius: 15px;">2</span></label>

                    </div>



                    <div>

                      <input type="radio" name="rating" value="3" id="rating_3"/>

                      <label for="rating_3" class="col-sm-1 col-xs-12"><span style="border-radius: 15px;">3</span></label>

                    </div>



                    <div>

                      <input type="radio" name="rating" value="4" id="rating_4"/>

                      <label for="rating_4" class="col-sm-1 col-xs-12"><span style="border-radius: 15px;">4</span></label>

                    </div>



                    <div>

                      <input type="radio" name="rating" value="5" id="rating_5"/>

                      <label for="rating_5" class="col-sm-1 col-xs-12"><span style="border-radius: 15px;">5</span></label>

                    </div>



                    <div class="col-sm-3"><?php echo $entry_good; ?></div>



                  </div>

                </div>

              </div>

              <div class="buttons clearfix">

                <div class="pull-right col-sm-6 col-xs-12">

                  <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn-checkout"><?php echo $button_continue; ?></button>

                </div>

              </div>



            </form>





          </div>

          <!-- end tab-content -->

        </div>





      </div>

      <?php echo $content_bottom; ?></div>

    <?php echo $column_right; ?></div>



  <script type="text/javascript"><!--

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

                  element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');

                } else {

                  element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');

                }

              }

            }



            if (json['error']['recurring']) {

              $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');

            }



            // Highlight any found errors

            $('.text-danger').parent().addClass('has-error');

          }



          if (json['success']) {

            $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');



            $('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);



            $('html, body').animate({ scrollTop: 0 }, 'slow');



            $('#cart > ul').load('index.php?route=common/cart/info ul li');

          }

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

                $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');

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

    var pageTop = $('h2').offset().top;


    $('#review').delegate('.pagination a', 'click', function(e) {

      e.preventDefault();



      $('#review').fadeOut('slow');



      $('#review').load(this.href, function () {
        $('html, body').animate({
          scrollTop: pageTop
        })
      });



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

      $('.thumbnails').magnificPopup({

        type:'image',

        delegate: 'a',

        gallery: {

          enabled:true

        }

      });

    });

    //--></script>

<?php echo $footer; ?>