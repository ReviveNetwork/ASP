<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" type="image/png" href="/ASP/frontend/images/icons/bf2.png">
	<title>Private Stats Admin</title>

    <!-- Viewport Metatag -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

	<!-- Required Stylesheets -->
	<link rel="stylesheet" type="text/css" href="/ASP/frontend/css/bootstrap.min.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/ASP/frontend/css/fonts/ptsans/stylesheet.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/ASP/frontend/css/fonts/icomoon/style.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/ASP/frontend/css/mws-style.css" media="screen">

	<!-- jQuery-UI Stylesheet -->
	<link rel="stylesheet" type="text/css" href="/ASP/frontend/jui/css/jquery.ui.all.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/ASP/frontend/jui/jquery-ui.custom.css" media="screen">

	<!-- Theme and Page specific Stylesheet -->
	<link rel="stylesheet" type="text/css" href="/ASP/frontend/css/bf2.theme.css" media="screen" />
    {VIEW_CSS}

	<!-- Required JavaScript Plugins -->
    <script type="text/javascript" src="/ASP/frontend/js/jquery-1.8.3.min.js"></script>

    <!-- jQuery-UI Dependent Scripts -->
    <script type="text/javascript" src="/ASP/frontend/jui/js/jquery-ui-1.9.2.min.js"></script>
    <script type="text/javascript" src="/ASP/frontend/jui/jquery-ui.custom.min.js"></script>
    <script type="text/javascript" src="/ASP/frontend/jui/js/jquery.ui.touch-punch.js"></script>

    <!-- Plugin Scripts -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/ASP/frontend/js/excanvas.min.js"></script>
    <![endif]-->

    <!-- Core and Page specific Scripts -->
    <script type="text/javascript" src="/ASP/frontend/js/bootstrap/bootstrap.min.js"></script>
    {VIEW_JS}
	<script type="text/javascript" src="/ASP/frontend/js/mws.js"></script>
</head>
<body>
	<!-- Header -->
	<div id="mws-header" class="clearfix">
    
    	<!-- Logo Container -->
    	<div id="mws-logo-container">
        
        	<!-- Logo Wrapper, images put within this wrapper will always be vertically centered -->
        	<div id="mws-logo-wrap">
            	<img id="logo" src="/ASP/frontend/images/bf2logo.png" alt="BF2 Private Stats Admin" />
			</div>
        </div>
		
		<div id="title">Private Stats Admin</div>
		<div id="dbver">Code Version: <?php echo CODE_VER; ?> || Database Version: <?php echo DB_VER ?> </div>
        
    </div>
    
    <!-- Start Main Wrapper -->
    <div id="mws-wrapper">
    
    	<!-- Necessary markup, do not remove -->
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>
        
        <!-- Sidebar Wrapper -->
        <div id="mws-sidebar">
            
            <!-- Main Navigation -->
            <div id="mws-navigation">
            	<ul>
                	<?php build_navigation(); ?>
                </ul>
            </div>            
        </div>
        
        <!-- Main Container Start -->
        <div id="mws-container" class="clearfix">
			
			<!-- Inner Container Start -->
            <div class="container">
			<?php 
				// Process DB version messages
				if(DB_VER == '0.0.0')
				{
                    echo '<div class="alert global">Unable to establish a database connection. If you need to setup the ASP,
                    <a href="./install">Click Here to begin Installation</a></div>';
				}
				elseif(DB_VER !== CODE_VER)
				{
					echo '<div class="alert global">Database is outdated. Please <a href="./database/upgrade">Click Here</a> to upgrade your database to the corrent version</div>';
				}
			?>
            {GLOBAL_MESSAGES}