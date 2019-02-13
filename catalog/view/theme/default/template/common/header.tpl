<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title><?php echo $title; ?></title>
      <base href="<?php echo $base; ?>" />
      <?php if ($description) { ?>
      <meta name="description" content="<?php echo $description; ?>" />
      <?php } ?>
      <?php if ($keywords) { ?>
      <meta name="keywords" content= "<?php echo $keywords; ?>" />
      <?php } ?>
      <!-- script autocolumn -->



      
      <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
      <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
      <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
      <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>
      <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
      <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic&subset=latin,cyrillic-ext' rel='stylesheet' type='text/css'>
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
      <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">   
      <link href="catalog/view/theme/default/stylesheet/bootstrapxl.css" rel="stylesheet" type="text/css">
      <?php foreach ($styles as $style) { ?>
      <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
      <?php } ?>
      <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
      <script src="catalog/view/javascript/autocolumnlist.js" type="text/javascript"></script>
      <script src="catalog/view/javascript/js-cookie.js" type="text/javascript"></script>
      <?php foreach ($links as $link) { ?>
      <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
      <?php } ?>
      <?php foreach ($scripts as $script) { ?>
      <script src="<?php echo $script; ?>" type="text/javascript"></script>
      <?php } ?>
      <?php foreach ($analytics as $analytic) { ?>
      <?php echo $analytic; ?>
      <?php } ?>

<script>
      function setCookie(name, value, options) {
      options = options || {};

      var expires = options.expires;

      if (typeof expires == "number" && expires) {
        var d = new Date();
        d.setTime(d.getTime() + expires * 1000);
        expires = options.expires = d;
      }
      if (expires && expires.toUTCString) {
        options.expires = expires.toUTCString();
      }

      value = encodeURIComponent(value);

      var updatedCookie = name + "=" + value;

      for (var propName in options) {
        updatedCookie += "; " + propName;
        var propValue = options[propName];
        if (propValue !== true) {
          updatedCookie += "=" + propValue;
        }
      }

      document.cookie = updatedCookie;
    }

    function deleteCookie(name) {
  setCookie(name, "", {
    expires: -1,
    path: '/'
  })
}
</script>


</head>
<!-- <body class="<?php echo $class; ?>" id="RU"> -->
<body class="<?php echo $class; ?>" id="<?php echo $GLOBALS['customer_location']; ?>"> 
<header>

<div class="container-fluid">
<div class="row">

  <div class="clearfix">
      <div class="col-md-3 col-sm-6 col-xs-6 col-xxs-12 header-row" id="header-row">
       
        <div id="logo" itemscope itemtype="http://schema.org/Organization">
          <?php if ($logo) { ?>
          <a itemprop="url" href="<?php echo $home; ?>"><img  itemprop="logo" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" style="margin: 0 auto;"/></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><span itemprop="name"><?php echo $name; ?></span></a></h1>
          <?php } ?>
        </div>
      </div>
      <!-- search -->
<?if($GLOBALS["customer_location"]==='UA'){?>
      <div class="col-lg-3 col-lg-offset-2 col-md-4 col-md-offset-1 col-xs-6 col-xxs-12 search-block-ua"><?php echo $search; ?></div>
<?}?>
<?if($GLOBALS["customer_location"]!=='UA'){?>
      <div class="col-lg-2 col-lg-offset-5 col-md-3 col-md-offset-4 col-xs-6 col-xxs-12 search-block"><?php echo $search; ?></div>
<?}?>

                                <!-- mobile -->

                                       <div class="mobile col-xs-6 col-xxs-12">

                                                  <?if($GLOBALS["customer_location"]==='UA'){?>    

                                                    <div class="col-xs-4 mobi">
                                                      <?php echo $language; ?>
                                                    </div>

                                                     

                                                    <div class="col-xs-6 mobi">
                                                      <?php echo $cart; ?>
                                                    </div>



                                                    <div class="mob-registration col-xs-2">

                                                                    <button class="dropdown mob-logo"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
                                                        <ul class="dropdown-menu dropdown-menu-right">
                                                          <?php if ($logged) { ?>
                                                          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>

                                                          <?if($GLOBALS["customer_location"]==='UA'){?>
                                                              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                                            <?}?>

                                                          <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                                          <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                                          <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                                                          <?php } else { ?>

                                                          <?if($GLOBALS["customer_location"]==='UA'){?>

                                                          <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                                                          <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>

                                                          <?php } else { ?>

                                                          <li><a href="<?php echo $link_to_wholesale ?>"><?php echo $text_register; ?></a></li>
                                                          <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                                                          <?php } ?>
                                                          <?php } ?>
                                                        </ul>
                                                      </button>

                                                     </div> <?php }  else { ?>

                                                                   <div class="col-xs-6 mobi">
                                                      <?php echo $language; ?>
                                                    </div>

                                                     



                                                    <div class="mob-registration col-xs-6">

                                                                    <button class="dropdown mob-logo"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
                                                        <ul class="dropdown-menu dropdown-menu-right">
                                                          <?php if ($logged) { ?>
                                                          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>

                                                          <?if($GLOBALS["customer_location"]==='UA'){?>
                                                              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                                            <?}?>

                                                          <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                                          <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                                          <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                                                          <?php } else { ?>

                                                          <?if($GLOBALS["customer_location"]==='UA'){?>

                                                          <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                                                          <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>

                                                          <?php } else { ?>

                                                          <li><a href="<?php echo $link_to_wholesale ?>"><?php echo $text_register; ?></a></li>
                                                          <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                                                          <?php } ?>
                                                          <?php } ?>
                                                        </ul>
                                                      </button>

                                                     </div> 



                                                     <?}?>

                                                   </div>

                                                    <div class="col-xs-12 mobi mobile">
                                                      <nav id="menu" class="navbar">
                                                        <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_information; ?></span>
                                                        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button></div>
                                                    <!-- button -->
                                                    <div class="collapse navbar-collapse navbar-ex1-collapse col-xs-12 m-inform">
                                                    <ul class="list-unstyled">

                                                        

                                                        <?if($GLOBALS["customer_location"]==='UA'){?>

                                                         <li><a href="<?php echo $link_to_anabout ?>"><?php echo $text_about; ?></a></li>
                                                         <li><a href="<?php echo $link_to_order; ?>"><?php echo $text_howtotorder; ?></a></li>
                                                         <li><a href="<?php echo $link_to_payment; ?>"><?php echo $text_delivery; ?></a></li> 
                                                         <li><a href="<?php echo $link_to_wholesale_ukr; ?>"><?php echo $text_wholesale; ?></a></li>
                                                         <?} else {?>
                                                           <li><a href="<?php echo $link_to_anabout_rus ?>"><?php echo $text_about; ?></a></li>
                                                           <li><a href="<?php echo $link_to_payment_rus; ?>"><?php echo $text_delivery; ?></a></li> 
                                                           <li><a href="<?php echo $link_to_wholesale; ?>"><?php echo $text_howtotorder; ?></a></li>

                                                         <?}?>
                                                          <!-- module  reviews-->
                                                         <li><a href="<?php echo $link_to_rewiews; ?>"><?php echo $text_reviews; ?></a></li>
                                                         <!-- module  reviews-->
                                                         <li><a href="<?php echo $contact; ?>"  class="last"><?php echo $text_contact; ?></a></li>

                                                    </ul>

                                                                  </div>
                                                          </nav>
                                                  </div>

                                       
                                        <!-- end mobile -->





        <?if($GLOBALS["customer_location"]==='UA'){?>

                <?php $small_text = ' ';?>
                <?php $change_class = 'col-md-6'; ?>
                <?php $change_class_top = 'col-xs-4'; ?>

          <?php }  else { ?>

                <?php $small_text = 'small-text'; ?>
                <?php $change_class = 'col-xs-8 col-md-12'; ?>
                <?php $change_class_top = 'col-xs-3 col-md-2 pull-right'; ?>

          <?}?>

   <div class="test <?php echo $change_class_top; ?> margin_large">


       <?if($GLOBALS["customer_location"]==='UA'){?>
      <div class="col-md-6 padding-large" style="padding: 0 0;"><?php echo $cart; ?></div>
      <?}?>
      <!-- currency+language+log -->  


               <div class="<?php echo $change_class; ?> pull-right no-padding">
                <div class="registration row pull-right">
                <ul class="registration-menu <?php echo $small_text; ?> col-sm-12 no-padding">
                <?php if ($logged) { ?>

                <li><span class="man"></span><a href="<?php echo $account; ?>"><?php echo $text_logged; ?></a></li>
                <!-- <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li> -->
                <li><span class="exit"></span><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                <?php } else { ?>

                <?if($GLOBALS["customer_location"]==='UA'){?>

                <li><span class="key"></span><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                <li><span class="lock"></span><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                <?php }  else { ?>

                <li><span class="key"></span><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                <li><span class="lock"></span><a href="<?php echo $link_to_wholesale ?>"><?php echo $text_register; ?></a></li>


                <?php } ?>
               <?php } ?>
              </ul>
       </div>
       
                <div class="lang-block  col-lg-8 pull-right"><?php echo $language; ?></div>

               <!--  <div class="cur-block col-md-12"><?php echo $currency; ?></div> -->
    
      </div>

     </div>

    
  </div>

    </div>
</div>


<div class="button_mail" data-toggle="modal" data-target=".bs-example-modal-lg">
  <div class="button_wrap">
  <div><?php echo $text_question; ?></div>
  </div>
</div>


<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">


    <div class="modal-content">
      <div class="modal-header">

        <button type="button" class="close" data-dismiss="modal">&times;</button>
   <!--      <h4 class="modal-title">Modal Header</h4> -->
      </div>

      <div class="modal-body">

      <?php if($GLOBALS["customer_location"]==='UA') {?>
            <!-- Nav tabs -->
            <ul class="form_link_nav nav-tabs col-xs-12" role="tablist">
             
              <li role="presentation" class="active col-xs-6"><a href="#rozn" aria-controls="rozn" role="tab" data-toggle="tab" class="form_link"><?=$text_comment2; ?></a></li>
              <li role="presentation" class="col-xs-6"><a href="#opt" aria-controls="opt" role="tab" data-toggle="tab" class="form_link"><?=$text_comment; ?></a></li>
           
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">

              <div role="tabpanel" class="tab-pane active" id="rozn">
                  <div class="col-xs-12">
                  <form action="" method="post" enctype="multipart/form-data" class="form-horizontal" id="form_one"  novalidate="novalidate">
                    <fieldset>
                      <legend><b><?php echo $text_contact; ?></b></legend>
                      <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
                        <div class="col-sm-10">
                          <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                        </div>
                      </div>
                      <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                        <div class="col-sm-10">
                          <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                        </div>
                      </div>
                      <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
                        <div class="col-sm-10">
                          <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                        </div>
                      </div>
                    </fieldset>
                    <div class="buttons">
                      <div class="pull-right col-xs-12 col-sm-6">
                        
                        <input class="hidden" type="submit" value="<?php echo $button_submit; ?>" id="send_sms" />

                        <label class="btn-checkout" for="send_sms"><?php echo $text_sendsms; ?></label>



                      </div>
                    </div>
                  </form>
                  </div>
             </div>

              <div role="tabpanel" class="tab-pane" id="opt"> 
                    <div class="col-xs-12">

                    <form action="" method="post" class="form-horizontal" id="form_two">

                      <fieldset>
                        <legend><b><?php echo $text_contact; ?></b></legend>
                        <div class="form-group required">
                          <label class="col-sm-2 control-label" for="input-name2"><?php echo $entry_name; ?></label>
                          <div class="col-sm-10">
                            <input type="text" name="name2" value="<?php echo $name; ?>" id="input-name2" class="form-control" />
                          </div>
                        </div>
                        <div class="form-group required">
                          <label class="col-sm-2 control-label" for="input-email2"><?php echo $entry_email; ?></label>
                          <div class="col-sm-10">
                            <input type="text" name="email2" value="<?php echo $email; ?>" id="input-email2" class="form-control" />
                          </div>
                        </div>
                        <div class="form-group required">
                          <label class="col-sm-2 control-label" for="input-enquiry2"><?php echo $entry_enquiry; ?></label>
                          <div class="col-sm-10">
                            <textarea name="enquiry2" rows="10" id="input-enquiry2" class="form-control"><?php echo $enquiry; ?></textarea>
                          </div>
                        </div>
                      </fieldset>
                      <div class="buttons">
                        <div class="pull-right col-xs-12 col-sm-6">
                          
                          <input class="hidden" type="submit" value="<?php echo $button_submit; ?>" id="send_sms2" />

                          <label class="btn-checkout" for="send_sms2"><?php echo $text_sendsms; ?></label>



                        </div>
                      </div>
                    </form>
                    </div>
            </div>

        </div>

        <!-- end tab -->
         <?php }  else { ?>
     <div class="col-xs-12">
            <form action="" method="post" class="form-horizontal" id="form_three">
        <fieldset>
          <legend><b><?php echo $text_contact; ?></b></legend>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name2"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name2" value="<?php echo $name; ?>" id="input-name2" class="form-control" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email2"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email2" value="<?php echo $email; ?>" id="input-email2" class="form-control" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-enquiry2"><?php echo $entry_enquiry; ?></label>
            <div class="col-sm-10">
              <textarea name="enquiry2" rows="10" id="input-enquiry2" class="form-control"><?php echo $enquiry; ?></textarea>
            </div>
          </div>
        </fieldset>
        <div class="buttons">
          <div class="pull-right col-xs-12 col-sm-6">
            
            <input class="hidden" type="submit" value="<?php echo $button_submit; ?>" id="send_sms2" />

            <label class="btn-checkout" for="send_sms2"><?php echo $text_sendsms; ?></label>



          </div>
        </div>
      </form>
      </div>
       <?php } ?>
      </div>

      <div class="modal-footer">
     <!--    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
      </div>
    </div>


  </div>

</div>

<script>
$(document).ready(function () {
   $(function () {
        // Setup form validation on the #register-form element
        $("#form_one").validate({
            // Specify the validation rules
            rules: {
                name: "required",
                email: {required: true, email: true},
                enquiry: {required: true, minlength: 10}

            },

            // Specify the validation error messages
            messages: {
                name: "Введите имя",
                email: "Введите email",
                enquiry: "Введите сообщение. Минимум 10 символов!"
            },

            submitHandler: function (form) {
                var data = $(form).serialize();
                // console.log(data);
                $.ajax({
                    type: "POST",
                    url: '<?php echo $action; ?>',
                    data: data,
                    success: function (result) {
                        $(".fade").hide();
                        location.href = '<?= $linksuccess; ?>';
                      }
                });
            }
        });
    });

      $(function () {
        // Setup form validation on the #register-form element
        $("#form_two").validate({
            // Specify the validation rules
            rules: {
                name2: "required",
                email2: {required: true, email: true},
                enquiry2: {required: true, minlength: 10}

            },

            // Specify the validation error messages
            messages: {
                name2: "Введите имя",
                email2: "Введите email",
                enquiry2: "Введите сообщение. Минимум 10 символов!"
            },

            submitHandler: function (form) {
                var data = $(form).serialize();
                
                $.ajax({
                    type: "POST",
                    url: '<?php echo $action_form_sender; ?>',
                    data: data,
                    success: function (result) {
                    $(".fade").hide();
                    location.href = '<?= $linksuccess; ?>';
                    }
                });
            }
        });
    });

       $(function () {
        // Setup form validation on the #register-form element
        $("#form_three").validate({
            // Specify the validation rules
            rules: {
                name2: "required",
                email2: {required: true, email: true},
                enquiry2:{required: true, minlength: 10}

            },

            // Specify the validation error messages
            messages: {
                name2: "Введите имя",
                email2: "Введите email",
                enquiry2: "Введите сообщение. Минимум 10 символов!"
            },

            submitHandler: function (form) {

                console.log(form);
                var data = $(form).serialize();
              
                $.ajax({
                    type: "POST",
                    url: '<?php echo $action_form; ?>',
                    data: data,
                    success: function (result) {
                       $(".fade").hide();
                      location.href = '<?= $linksuccess; ?>';
                    }
                });
            }
        });
    });

});


</script>


<!-- end header --> 
<div class="col-xs-2 main-menu test">
 <div class="row">
  <div class="clearfix mobile-menu"  id="<?php echo $lang; ?>">
        <nav class="navbar" id="menu">
          <!-- <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_menu; ?></span>
            <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
          </div>
         
          <div class="collapse navbar-collapse navbar-ex1-collapse col-xs-12"> -->
            <ul class="nav navbar-nav">
            


                   <?php if ($categories) { ?> 
                        <!-- есть категории -->

                          <?php foreach ($categories as $category) { ?>
                          <!-- для каждой категории в массиве -->
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                <?php foreach ($children as $child) { ?>
                <li class="menu-li menu-kat_new"><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>

              <?php } ?>
                     
                            <?}?>
                            <?}?>

                  <?if($GLOBALS["customer_location"]==='UA'){?>
                            <li class="menu-li"><a href="<?php echo $link_to_anabout ?>"><?php echo $text_about; ?></a></li>
                         <!-- about us --> <?} else {?>
                                      <li class="menu-li"><a href="<?php echo $link_to_anabout_rus; ?>"><?php echo $text_about; ?></a></li>
                                     <!-- about us --><?}?>


                                        <!-- other li -->
                                    <?if($GLOBALS["customer_location"]==='UA'){?>
                                   <li class="menu-li"><a href="<?php echo $link_to_order; ?>"><?php echo $text_howtotorder; ?></a></li>
                                   <li class="menu-li"><a href="<?php echo $link_to_payment; ?>"><?php echo $text_delivery; ?></a></li> 
                                   <li class="menu-li"><a href="<?php echo $link_to_wholesale_ukr; ?>"><?php echo $text_wholesale; ?></a></li>
                                   <?} else {?>
                                     <li class="menu-li"><a href="<?php echo $link_to_payment_rus; ?>"><?php echo $text_delivery; ?></a></li>
                                     <li class="menu-li"><a href="<?php echo $link_to_wholesale; ?>"><?php echo $text_howtotorder; ?></a></li>

                                   <?}?>
                                    <!-- module  reviews-->
                                   <li class="menu-li"><a href="<?php echo $link_to_rewiews; ?>"><?php echo $text_reviews; ?></a></li>
                                   <!-- module  reviews-->
                                   <li class="menu-li"><a href="<?php echo $contact; ?>"  class="last"><?php echo $text_contact; ?></a></li>
                                  
                                        
              </ul>
       </nav>
  </div>
  </div>
</div>


</header>

 



