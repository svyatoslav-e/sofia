<footer>
  
    <div class="container-fluid copyright">

    <div class="row">

      <div class="container footer-block">


      <!-- end information -->
      <div class="col-sm-9 col-xs-12">
                          <h5><?php echo $text_category; ?></h5>
                          <hr    style="margin-top: 10px; margin-bottom: 20px; border-top: 1px solid #ddd;">

                                      <?php if ($categories) { ?>
                                          <ul class="categories-menu row">
                                            <?php foreach ($categories as $category) { ?>
                                            <?php if ($category['children']) { ?>
                                            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>

                                              <?php foreach ($children as $child) { ?>
                                              <li class="footer-li"><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                              <?php } ?>

                                            <?php } ?>
                                            <?php } ?>
                                            <?php } ?>

                                              <li class="footer-li"><a href="https://sofiashelest.ua/" target="_blank"><?php echo $text_redirect_to_ua; ?></a></li>
                                           </ul>
                                        <?php } ?>
      </div>
  
 <div class="col-sm-3 footer-desc">
           <div class="col-sm-12 social">

            <ul class="social-list">
              <li class="instagram"><a href="https://www.instagram.com/tm_sofia.shelest/"></a></li>
              <li class="google"><a href="https://www.facebook.com/profile.php?id=100016495144640&ref=ts&fref=ts"></a></li>
              <li class="classmates"><a href="https://vk.com/tm_sofiashelest"></a></li>
            </ul>
             
           </div>
      <div class="col-sm-12 powered">
        <p><?php echo $powered; ?></p>
     </div>

    </div>
    
  </div>
      

    <!-- footer mobile -->
 <div class="container footer-mobile">
  
   <div class="col-xs-12 social">

        <ul class="col-xs-12 social-list">
              <li class="vk"><a href="https://ok.ru/profile/569688572392"></a></li>
              <li class="instagram"><a href="https://www.instagram.com/sofia_shelest/"></a></li>
              <li class="google"><a href="https://www.facebook.com/profile.php?id=100016495144640&fref=ts"></a></li>
              <li class="classmates"><a href="https://vk.com/id296682471"></a></li>
        </ul>
     
   </div>

         <div class="col-xs-12 powered">
        <p><?php echo $powered; ?></p>
     </div>
    </div>
    </div>
    </div>

</footer>
<script>
  
function getCookie(name) {
      var matches = document.cookie.match(new RegExp(
        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
      ));
      return matches ? decodeURIComponent(matches[1]) : undefined;
    }

      var special =  getCookie('registration');

</script>
<script type="text/javascript">
	  (function(d, w, s) {
		var widgetHash = '3g3jhfick2ihx860vm6x', gcw = d.createElement(s); gcw.type = 'text/javascript'; gcw.async = true;
		gcw.src = '//widgets.binotel.com/getcall/widgets/'+ widgetHash +'.js';
		var sn = d.getElementsByTagName(s)[0]; sn.parentNode.insertBefore(gcw, sn);
	  })(document, window, 'script');
</script>
<script src="https://grably-parser.ru/js/parser_widget.js" type="text/javascript" data-uuid="ade0a8f5-67f2-5c13-953d-a9abc3210778" data-position="position-bottom-left" data-color="#c4123c" data-style="background-color: #c4123c; color: white"></script>

</body></html>