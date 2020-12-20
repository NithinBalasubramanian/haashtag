 </div><!-- az-content-body -->
 </div><!-- az-content-body -->

      <div class="az-footer">
        <div class="container-fluid">
          <span>&copy; 2020 Haashtag</span>
          <span>Developed by: STEED26</span>
        </div><!-- container -->
      </div><!-- az-footer -->
    </div><!-- az-content -->

    <div class="modal fade" id="generalModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mainGeneralHeading">Title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="fa fa-times"></i>
                </button>
            </div>

            <div class="modal-body" id="mainGeneralContent">

            </div>
        </div>
    </div>
</div>
     <div style='display:none' id='savedata'>
         <img src='<?php echo base_url('assets/img/savedata.gif') ?>'>
         <p id='main_load_id-text'><?php echo lang('saving_data_please_wait') ?></p>
     </div>
      <script>
          function show_load(mainHtml = ""){
               var mk = "<?php echo lang('saving_data_please_wait') ?>";
              if(mainHtml != "") {
                  mk = mainHtml;
              }
              $('#main_load_id-text').html(mk);
              $('#savedata').show();
          }
          function hide_load(){
             
              $('#savedata').hide();
          }
      $(function(){
        'use strict'

        $('.az-iconbar .nav-link').on('click', function(e){
          e.preventDefault();

          $(this).addClass('active');
          $(this).siblings().removeClass('active');

          $('.az-iconbar-aside').addClass('show');

          var targ = $(this).attr('href');
          $(targ).addClass('show');
          $(targ).siblings().removeClass('show');
        });

        $('.az-iconbar-toggle-menu').on('click', function(e){
          e.preventDefault();

          if(window.matchMedia('(min-width: 992px)').matches) {
            $('.az-iconbar .nav-link.active').removeClass('active');
            $('.az-iconbar-aside').removeClass('show');
          } else {
            $('body').removeClass('az-iconbar-show');
          }
        })

        $('#azIconbarShow').on('click', function(e){
          e.preventDefault();
          $('body').toggleClass('az-iconbar-show');

          var targ = $('.az-iconbar .nav-link.active').attr('href');
          $(targ).addClass('show');
        });

        $(document).bind('click touchstart', function(e){
          e.stopPropagation();

          var azContent = $(e.target).closest('.az-content').length;
          var azIconBarMenu = $(e.target).closest('.az-header-menu-icon').length;

          if(azContent) {
            $('.az-iconbar-aside').removeClass('show');

            // for mobile
            if(!azIconBarMenu) {
              $('body').removeClass('az-iconbar-show');
            }
          }
        });

         

          

        //
      });
      
      
      function ajax_form($form, on_complete)
{
    var iframe;

    if (!$form.attr('target'))
    {
        //create a unique iframe for the form
        iframe = $("<iframe></iframe>").attr('name', 'ajax_form_' + Math.floor(Math.random() * 999999)).hide().appendTo($('body'));
        $form.attr('target', iframe.attr('name'));
    }

    if (on_complete)
    {
        iframe = iframe || $('iframe[name="' + $form.attr('target') + '"]');
        iframe.load(function ()
        {
            //get the server response
            var response = iframe.contents().find('body').text();
            on_complete(response);
        });
    }
}
    </script>
  </body>
</html>
