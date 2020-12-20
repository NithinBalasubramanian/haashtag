<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Twitter -->
  <meta name="twitter:site" content="@">
  <meta name="twitter:creator" content="@">
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="HAASHTAG">
  <meta name="twitter:description" content="">
  <meta name="twitter:image" content="">

  <!-- Facebook -->


  <!-- Meta -->
  <meta name="description" content="">
  <meta name="author" content="STEED26">

  <title>#Haashtag</title>

  <!-- vendor css -->
  <link href="<?php echo base_url('assets/lib/fontawesome-free/css/all.min.css') ?>" rel="stylesheet">
  <link href="<?php echo base_url('assets/lib/ionicons/css/ionicons.min.css') ?>" rel="stylesheet">
  <link href="<?php echo base_url('assets/lib/typicons.font/typicons.css') ?>" rel="stylesheet">
  <link href="<?php echo base_url('assets/lib/flag-icon-css/css/flag-icon.min.css') ?>" rel="stylesheet">

  <!-- azia CSS -->
  <link rel="stylesheet" href="<?php echo base_url('assets/css/haashtag.css') ?>">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/style.up.css') ?>">

</head>
<script src="<?php echo base_url('assets/lib/jquery/jquery.min.js') ?>"></script>
<script src="<?php echo base_url('assets/lib/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
<script src="<?php echo base_url('assets/lib/ionicons/ionicons.js') ?>"></script>
<script src="<?php echo base_url('assets/lib/jquery.flot/jquery.flot.js') ?>"></script>
<script src="<?php echo base_url('assets/lib/jquery.flot/jquery.flot.categories.js') ?>"></script>
<script src="<?php echo base_url('assets/lib/jquery.flot/jquery.flot.resize.js') ?>"></script>
<script src="<?php echo base_url('assets/lib/flot.curvedlines/curvedLines.js') ?>"></script>
<script src="<?php echo base_url('assets/js/haashtag.js') ?>"></script>

<style>
  .ui-jqgrid .ui-jqgrid-view {

    border: 1px solid #808080;
    border-bottom: 0;
  }

  .az-iconbar-title {

    margin-top: 20px;
  }

  table.ui-common-table tr:nth-child(odd) {
    background: #efefef
  }

  table.ui-common-table tr:nth-child(even) {
    background: #FFF
  }
span.help-block {
    font-size: 11px;
    color: red;
}
div#savedata {
    position: fixed;
    width: 100%;
    height: 100%;
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
    background: #fff;
    z-index: 999;
}
div#savedata img {
         width: auto;
    margin: 0 auto;
    display: block;
    height: 350px;
}

div#savedata p {
        font-size: 18px;
    color: #000;
    font-weight: bold;
    font-style: inherit;
    text-align: center;
}
  div#serachdiv {
    text-align: right;
    margin-bottom: 15px;
  }

  .ui-state-default,
  .ui-widget-content .ui-state-default,
  .ui-widget-header .ui-state-default,
  .ui-button,
  html .ui-button.ui-state-disabled:hover,
  html .ui-button.ui-state-disabled:active {
    border: 1px solid #808080;
    background: #4992c866 !important;

  }

  .ui-jqgrid tr.jqgrow td {

    text-align: center !important;
  }

  .card-table-one .card-title {
    font-size: 14px;
    font-weight: 700;
    margin-bottom: 5px;
    background: #0a6cb5;
    width: 300px;
    display: inline-block;
    padding: 11px;
    border-radius: 3px;
    color: #fff;
  }

  .card.card-table-one .az-content-text {
    font-size: 0;
  }

  input#search {
    padding: 5px;
    border-radius: 25px;
    border: 1px solid #cccc !important;
    width: 200px;
    padding-left: 15px;
    outline: none !important;
  }

  .ui-jqgrid .ui-jqgrid-htable .ui-th-div {

    font-weight: bold !important;

  }

  .ui-jqgrid tr.jqgrow td {

    color: #000;
  }

  .ui-jqgrid .ui-pg-button span {
    display: block;
    margin: 2px;
    float: left;
    padding: 5px;
    width: 25px;
    background: #000;
    color: #fff;
  }

  body {
    font-family: 'Noto Sans JP', sans-serif !important;

  }

  span.ui-icon.ui-icon-seek-prev:before {
    font-family: FontAwesome;
    content: "<";
    display: inline-block;

    vertical-align: middle;
    text-align: center;
  }

  span.ui-icon.ui-icon-seek-next:before {
    font-family: FontAwesome;
    content: ">";
    display: inline-block;

    vertical-align: middle;
    text-align: center;
  }

  span.ui-separator {
    opacity: 0;
    position: absolute;
  }

  span.ui-icon.ui-icon-seek-first {
    opacity: 0;
  }

  span.ui-icon.ui-icon-seek-end {
    opacity: 0;
  }
  span.m-required:before {
    content: "*";
    color: red;
}
</style>

<body class="az-body">
  <div class="az-iconbar az-iconbar-primary">

    <nav class="nav">
      <a href="#asideMasters" class="nav-link active"><i class="typcn typcn-device-laptop"></i>
        <span>Company</span>
      </a>
      <a href="#asideCustomers" class="nav-link"><i class="typcn typcn-user-outline"></i>
        <span>Customer</span>
      </a>
        <a href="#asideVendor" class="nav-link"><i class="typcn  typcn-briefcase"></i>
        <span>Vendors</span>
      </a>

      <a href="#asideServiceProvider" class="nav-link"><i class="typcn typcn-th-large-outline"></i>
        <span>Partners</span>
      </a>

    </nav>

  </div><!-- az-iconbar -->
  <div class="az-iconbar-aside az-iconbar-aside-primary">
    <div class="az-iconbar-header">

      <a href="" class="az-iconbar-toggle-menu">
        <i class="icon ion-md-arrow-back"></i>

        <i class="icon ion-md-close"></i>
      </a>
    </div><!-- az-iconbar-header -->
    <div class="az-iconbar-body">
      <div id="asideMasters" class="az-iconbar-pane">
        <h6 class="az-iconbar-title">Company</h6>

        <nav class="nav">

          <!-- <a href="#asideRateCard" class="nav-link"><i class="typcn typcn-book"></i><span>Rate&nbspCard</span></a> -->
          <a href="<?php echo base_url('master/country') ?>" class="nav-link">Country</a>
          <a href="<?php echo base_url('master/zone') ?>" class="nav-link">Zone</a>
          <a href="<?php echo base_url('master/state') ?>" class="nav-link">State</a>
          <a href="<?php echo base_url('master/city') ?>" class="nav-link">City</a>
          <a href="<?php echo base_url('master/pincode') ?>" class="nav-link">Pincode</a>
          <a href="<?php echo base_url('master/profile') ?>" class="nav-link">Profile</a>
          <a href="<?php echo base_url('master/gst') ?>" class="nav-link">GST Setup</a>
        </nav>
      </div>
      <div id="asideCustomers" class="az-iconbar-pane">
        <h6 class="az-iconbar-title">Customers</h6>

        <nav class="nav">
          <a href="<?php echo base_url('customer/view') ?>" class="nav-link">Customers</a>

          <!-- <a href="<?php echo base_url('customer/rateCard') ?>" class="nav-link">Customer Rate Card</a> -->
          <a href="<?php echo base_url('rateCard/view') ?>" class="nav-link">Customer Rate Card</a>
        </nav>
      </div><!-- az-iconbar-pane -->
      <div id="asideVendor" class="az-iconbar-pane">
        <h6 class="az-iconbar-title">Vendor</h6>

        <nav class="nav">
          <a href="<?php echo base_url('vendor/view') ?>" class="nav-link">Vendors</a>

        </nav>
      </div><!-- az-iconbar-pane -->
      <div id="asideServiceProvider" class="az-iconbar-pane">
        <h6 class="az-iconbar-title">Partners</h6>

        <nav class="nav">
          <a href="<?php echo base_url('master/partners') ?>" class="nav-link"> Partners</a>
          <a href="<?php echo base_url('master/services') ?>" class="nav-link"> Services</a>
          <a href="<?php echo base_url('master/bookType') ?>" class="nav-link"> Book Type</a>
          <a href="<?php echo base_url('book/purchaseBook') ?>" class="nav-link"> Purchase Book </a>
        </nav>
      </div><!-- az-iconbar-pane -->
      <div id="asideRateCard" class="az-iconbar-pane">
        <h6 class="az-iconbar-title">Rate &amp; Card</h6>

        <nav class="nav">
          <a href="<?php echo base_url('rateCard/view') ?>" class="nav-link">View All Rate Card</a>
          <a href="<?php echo base_url('rateCard/manage') ?>" class="nav-link">Add New Rate Card</a>
          <a href="<?php echo base_url('rateCard/raeCard') ?>" class="nav-link">Map Rate Card</a>

        </nav>
      </div><!-- az-iconbar-pane -->
      <div id="asideUIElements" class="az-iconbar-pane">
        <h6 class="az-iconbar-title">UI Elements</h6>
        <small class="az-iconbar-text">Reusable elements built to provide buttons, dropdowns, input, navigation, alerts, and much more</small>
        <nav class="nav">
          <a href="elem-accordion.html" class="nav-link">Accordion</a>
          <a href="elem-alerts.html" class="nav-link">Alerts</a>
          <a href="elem-buttons.html" class="nav-link">Buttons</a>
          <a href="elem-cards.html" class="nav-link">Cards</a>
          <a href="elem-icons.html" class="nav-link">Icons</a>
          <a href="elem-modals.html" class="nav-link">Modals</a>
          <a href="elem-navigation.html" class="nav-link">Navigation</a>
          <a href="elem-pagination.html" class="nav-link">Pagination</a>
          <a href="elem-tooltip.html" class="nav-link">Tooltip</a>
          <a href="elem-popover.html" class="nav-link">Popover</a>
          <a href="elem-progress.html" class="nav-link">Progress</a>
        </nav>
      </div><!-- az-iconbar-pane -->
      <div id="asideForms" class="az-iconbar-pane">
        <h6 class="az-iconbar-title">Forms</h6>
        <small class="az-iconbar-text">Forms are used to collect user information with different element types of inputs.</small>

        <nav class="nav">
          <a href="form-elements.html" class="nav-link">Form Elements</a>
          <a href="form-layouts.html" class="nav-link">Form Layouts</a>
          <a href="form-validation.html" class="nav-link">Form Validation</a>
          <a href="form-wizards.html" class="nav-link">Form Wizards</a>
          <a href="form-editor.html" class="nav-link">WYSIWYG Editor</a>
        </nav>
      </div><!-- az-iconbar-pane -->
      <div id="asideCharts" class="az-iconbar-pane">
        <h6 class="az-iconbar-title">Charts</h6>
        <small class="az-iconbar-text">A sheet of information in the form of a table, graph, or diagram.</small>
        <nav class="nav">
          <a href="chart-morris.html" class="nav-link">Morris Charts</a>
          <a href="chart-flot.html" class="nav-link">Flot Charts</a>
          <a href="chart-chartjs.html" class="nav-link">ChartJS</a>
          <a href="chart-sparkline.html" class="nav-link">Sparkline</a>
          <a href="chart-peity.html" class="nav-link">Peity</a>
        </nav>
      </div><!-- az-iconbar-pane -->
      <div id="asideMaps" class="az-iconbar-pane">
        <h6 class="az-iconbar-title">Maps</h6>
        <small class="az-iconbar-text">An interactive display of geographic information that you can use for location and more.</small>
        <nav class="nav">
          <a href="map-google.html" class="nav-link">Google Maps</a>
          <a href="map-leaflet.html" class="nav-link">Leaflet</a>
          <a href="map-vector.html" class="nav-link">Vector Maps</a>
        </nav>
      </div><!-- az-iconbar-pane -->
      <div id="asideTables" class="az-iconbar-pane">
        <h6 class="az-iconbar-title">Tables</h6>
        <small class="az-iconbar-text">A collection basic to advanced table design that you can use to your data.</small>
        <nav class="nav">
          <a href="table-basic.html" class="nav-link">Basic Tables</a>
          <a href="table-data.html" class="nav-link">Data Tables</a>
        </nav>
      </div><!-- az-iconbar-pane -->
    </div><!-- az-iconbar-body -->
  </div><!-- az-iconbar-aside -->

  <div class="az-content az-content-dashboard-ten">
    <div class="az-header">
      <div class="container-fluid">
        <div class="az-header-left">
          <a href="" id="azIconbarShow" class="az-header-menu-icon d-lg-none"><span></span></a>
          <img style="height: 45px;display: block;margin-left: -21px;" src="<?php echo base_url('assets/img/logo_horizontal.png') ?>">
        </div><!-- az-header-left -->

        <div class="az-header-right">


        </div><!-- az-header-right -->
      </div><!-- container -->
    </div><!-- az-header -->

    <div class="az-content-body">


      <div class="main-head-sl">
        <div class="puloa">
          <?php if (isset($breadcomb_title)) { ?>
            <div class="az-content-breadcrumb">
              <span><?php echo $breadcomb_title ?></span>

            </div>
          <?php } ?>
          <?php if (isset($main_title)) { ?>
            <h2 style="margin:0px;" class="az-content-title"><?php echo $main_title ?></h2>
          <?php } ?>
        </div>
        <div class="las">
          <div style="float: right;" class="az-content-header-right ">
            <?php if (isset($head_link)) {
              foreach ($head_link as $mLink) {
            ?>
                <a href="<?php echo $mLink['link'] ?>" class="<?php echo $mLink['class'] ?>"><?php echo $mLink['name'] ?></a>

            <?php }
            } ?>
          </div>

        </div>
        <div class="clearfix"></div>
      </div>
      <div class="main-blocks">