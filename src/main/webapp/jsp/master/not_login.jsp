<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title><?php echo $title_for_layout; ?></title>
		<meta name="keywords" content="<?php if(isset($meta_keywords)) echo $meta_keywords; ?>" />
		<meta name="description" content="<?php if(isset($meta_description)) echo $meta_description; ?>" />
		<meta name="google-site-verification" content="<?php  echo $google_site_verification; ?>" />
		<meta name="author" content="Spark Infosys"/>
		<link rel="icon" href="<?php echo base_url();?>assets/images/logo/favicon.ico" type="image/x-icon">
		<link href="<?php echo base_url();?>assets/css/vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<link href="<?php echo base_url();?>assets/css/dist/css/style.css" rel="stylesheet" type="text/css">
		<link href="<?php echo base_url();?>assets/css/dist/css/custom.css" rel="stylesheet" type="text/css">
		<link href="<?php echo base_url();?>assets/css/dist/css/fontawesome.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper pa-0">
			<header class="sp-header">
				<div class="sp-logo-wrap pull-left">
					<a href="<?php echo base_url();?>master">
						<img class="brand-img mr-10" src="<?php echo base_url();?>assets/images/logo/logo.png" alt="brand"/>
						<span class="brand-text">Welcome to Zomant</span>
					</a>
				</div>
			</header>
			<?php echo $content_for_layout;?>
		</div>
		<script src="<?php echo base_url();?>assets/css/vendors/bower_components/jquery/dist/jquery.min.js"></script>
		<script src="<?php echo base_url();?>assets/css/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="<?php echo base_url();?>assets/css/vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
		<script src="<?php echo base_url();?>assets/css/dist/js/jquery.slimscroll.js"></script>
		<script src="<?php echo base_url();?>assets/css/dist/js/init.js"></script>
	</body>
</html>
