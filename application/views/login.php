<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Twitter -->
    <meta name="twitter:site" content="@haashtag">
    <meta name="twitter:creator" content="haashtag">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Haashtag">
    <meta name="twitter:description" content="Haashtag">
    <meta name="twitter:image" content="">

    <!-- Facebook -->
    <meta property="og:url" content="<?php echo base_url() ?>">
    <meta property="og:title" content="Haashtag">
    <meta property="og:description" content="Haashtag">

    <meta property="og:image" content="">
    <meta property="og:image:secure_url" content="">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="600">

    <!-- Meta -->
    <meta name="description" content="Haashtag">
    <meta name="author" content="Steed26">

    <title>Haashtag | Login</title>

    <!-- vendor css -->
    <link href="<?php echo base_url('assets/lib/fontawesome-free/css/all.min.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/lib/ionicons/css/ionicons.min.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/lib/typicons.font/typicons.css') ?>" rel="stylesheet">

    <!-- haashtag CSS -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/haashtag.css') ?>">

  </head>
  <body class="az-body">
      <script>
 BASEURL = '<?php  echo base_url() ?>'
 
 </script>
 <style>
 .az-column-signup {
    background-color: #fff;
    padding: 30px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}
.az-signup-header label {
    color: #000;
    font-weight: bold;
}
button.btn.btn-az-success.btn-block {
    background: #16a857;
    color: #fff;
}
button.btn.btn-az-success.btn-block:hover {
    background: #0e6535;
   
}
 </style>
    <div class="az-signup-wrapper">
     <?php /* <div style="background-image: url(<?php echo base_url('assets/img/truck.jpg') ?>);     background-size: cover;
    background-repeat: no-repeat;" class="az-column-signup-left">
        <div>
         
        <?php /*  <img style="width:250px" src="<?php echo base_url('assets/img/logo.png') ?>"> */ ?>
          
         
       <?php /* </div>
      </div><!-- az-column-signup-left -->  */ ?>
      <div style="margin: 0 auto;    border-left: 0;" class="az-column-signup">
       <img style="width: 200px;
    margin: 0 auto;" src="<?php echo base_url('assets/img/logo.png') ?>">
        <div class="az-signup-header">
         

          <form id='login_form' class="text-left">
            <div class="form-group">
              <label>Username</label>
              <input id="username" required="required" name="username" type="text" class="form-control" placeholder="<?php echo lang('username') ?>">
                               
            </div><!-- form-group -->
            <div class="form-group">
              <label>Password</label>
              <input id="password" required="required" name="password" type="password" class="form-control" placeholder="<?php echo lang('password') ?>">
                              
            </div><!-- form-group -->
             
            <button  type="submit" class="btn btn-az-success btn-block">Login</button>
            
          </form>
        </div><!-- az-signup-header -->
       
      </div><!-- az-column-signup -->
    </div><!-- az-signup-wrapper -->

    <script src="<?php echo base_url('assets/lib/jquery/jquery.min.js') ?>"></script>
    <script src="<?php echo base_url('assets/lib/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
    <script src="<?php echo base_url('assets/js/lib/ionicons/ionicons.js') ?>"></script>

    <script src="<?php echo base_url('assets/js/haashtag.js') ?>"></script>
    
     <script src="<?php echo base_url('assets/plugins/sweetalerts/sweetalert2.min.js') ?>"></script>
    <script src="<?php echo base_url('assets/js/jquery.validate.js') ?>"></script>

    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <script src="<?php echo base_url('assets/js/auth.js') ?>"></script>
    
    <script>
      $(function(){
        'use strict'

      });
    </script>
  </body>
</html>
