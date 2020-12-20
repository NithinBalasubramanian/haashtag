<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Error</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
     
 <link href="<?php echo base_url('assets/css/pace-theme-flash.css') ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('assets/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('assets/css/font-awesome.css') ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('assets/css/jquery.scrollbar.css') ?>" rel="stylesheet" type="text/css" media="screen" />
        <link href="<?php echo base_url('assets/css/pages-icons.css') ?>" rel="stylesheet" type="text/css">
        <link class="main-stylesheet" href="<?php echo base_url('assets/css/pages.css') ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('assets/css/slimscroll.css') ?>" rel="stylesheet" type="text/css" media="screen" />
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <style>
        .centered-img {
  position: fixed;
  top: 50%;
  left: 50%;
  /* bring your own prefixes */
     -ms-transform:translate(-50%, -50%);
-webkit-transform: translate(-50%, -50%);
-moz-transform:translate(-50%, -50%);
-o-transform: translate(-50%, -50%);
transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
}
.centered-img img {
    width: 125px;
}
@media (max-width: 1500px) {
	.centered-img img {
    width: 100px;
}
}.login-logo {
    font-size: 46px;
    text-align: center;
}
    </style>
    <body class="login-page">

        <div class="centered-img">
            <div class="login-logo" >
                EHS

            </div><!-- /.login-logo -->
            <h3 class='text-center text-danger'> Sorry!! No jobs assigned, please contact superadmin.<br/>
                <a href='<?php echo base_url(); ?>' class="btn btn-primary">Click here to go back</a>
            </h3>
        </div>




        <script src="<?php echo base_url() ?>assets/admin/js/jQuery-2.1.4.min.js" type="text/javascript"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="<?php echo base_url() ?>assets/admin/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
