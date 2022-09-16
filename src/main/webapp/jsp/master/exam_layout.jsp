<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$msg='';
$icon='';
if($this->session->flashdata('success')!='')
{
	$msg=$this->session->flashdata('success');
	$icon='success';
}
else if($this->session->flashdata('error')!=''){
	$msg=$this->session->flashdata('error');
	$icon='error';
}
else if(isset($error) && $error!=''){
	$msg=$error;
	$icon='error';
}
else if(isset($success) && $success!=''){
	$msg=$success;
	$icon='success';
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title><?php echo $title_for_layout; ?></title>
	<meta name="keywords" content="<?php if(isset($meta_keywords)) echo $meta_keywords; ?>" />
	<meta name="description" content="<?php if(isset($meta_description)) echo $meta_description; ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/exam/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/exam/css/font-awesome/4.2.0/css/font-awesome.min.css" />

    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/exam/css/fonts/fonts.googleapis.com.css" />
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/exam/css/style.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/exam/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
	<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
	<link rel="stylesheet" href="<?php echo base_url();?>assets/css/exam/css/tabs_scrip/bootstrap-dynamic-tabs.css">
    <script src="<?php echo base_url();?>assets/css/exam/css/tabs_scrip/bootstrap-dynamic-tabs.js"></script>
    
	<?php echo $css_for_layout;?>
	
</head>

<body>
	<?php echo $content_for_layout;?>
	
    <!-- basic scripts -->

    <!--[if !IE]> -->
    <script src="<?php echo base_url();?>assets/css/exam/js/jquery.2.1.1.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
	<script src="assets/js/jquery.1.11.1.min.js"></script>
	<![endif]-->

    <!--[if !IE]> -->
    <script type="text/javascript">
        window.jQuery || document.write("<script src='<?php echo base_url();?>assets/css/exam/js/jquery.min.js'>"+"<"+"/script>");
    </script>

    <!-- <![endif]-->

    <!--[if IE]>
	<script type="text/javascript">
	 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
	</script>
	<![endif]-->
    <script type="text/javascript">
        if('ontouchstart' in document.documentElement) document.write("<script src='<?php echo base_url();?>assets/css/exam/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
    </script>
    <script src="<?php echo base_url();?>assets/css/exam/js/bootstrap.min.js"></script>
	<?php echo $js_for_layout;?>
</body>

</html>