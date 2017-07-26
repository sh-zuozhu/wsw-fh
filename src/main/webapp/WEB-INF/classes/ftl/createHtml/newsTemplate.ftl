<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>${TITLE}</title>
<meta name="keywords" content="${KEYWORDS}" />
<meta name="description" content="${DESCRIPTION}">
<meta name="author" content="fhadmin">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS -->
<link rel="stylesheet" href="fh_static_1/css/style.css">
<link rel="stylesheet" type="text/css"
	href="fh_static_1/css/settings.css" media="screen" />
<!-- JS -->
<script src="fh_static_1/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<!-- jQuery -->
<script src="fh_static_1/js/jquery.easing.1.3.js" type="text/javascript"></script>
<!-- jQuery easing -->
<script src="fh_static_1/js/modernizr.custom.js" type="text/javascript"></script>
<!-- Modernizr -->
<script src="fh_static_1/js/jquery-ui-1.10.1.custom.min.js"
	type="text/javascript"></script>
<!-- tabs, toggles, accordion -->
<script src="fh_static_1/js/custom.js" type="text/javascript"></script>
<!-- jQuery initialization -->
<!-- Responsive Menu -->
<script src="fh_static_1/js/jquery.meanmenu.js"></script>
<script>
	jQuery(document).ready(function() {
		jQuery('header nav').meanmenu();
	});
</script>
<!-- Revolution Slider -->
<script src="fh_static_1/js/jquery.themepunch.plugins.min.js"></script>
<script src="fh_static_1/js/jquery.themepunch.revolution.min.js"></script>
<script src="fh_static_1/js/revolution-slider-options.js"></script>
<!-- Prety photo -->
<script src="fh_static_1/js/jquery.prettyPhoto.js"></script>
<script>
	$(document).ready(function() {
		$("a[data-gal^='prettyPhoto']").prettyPhoto();
	});
</script>
<!-- Tooltip -->
<script src="fh_static_1/js/tooltip.js"></script>
<!-- Flexisel -->
<script type="text/javascript" src="fh_static_1/js/jquery.flexisel.js"></script>
<!-- Favicons  -->
<link rel="shortcut icon" href="fh_static_1/images/favicon.ico">
<link rel="apple-touch-icon" href="fh_static_1/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="fh_static_1/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="fh_static_1/images/apple-touch-icon-114x114.png">
</head>
<body>

	<!-- header 包含导航菜单 -->
	<#include "headerTemplate.ftl"> 
	<!-- header 包含导航菜单 -->

	<div class="container">
	
		<div class="container">
			<div class="sixteen columns page-title">
				<div class="eight columns alpha">
					<h3> <span>新闻动态</span> </h3>
				</div>
				<div class="eight columns omega">
					<nav class="breadcrumbs">
						<ul>
							<li></li>
							<li>
								<a>News & Events</a>
							</li>
							<li></li>
						</ul>
					</nav>
				</div>
				<div class="clearfix"></div>
			</div><!-- page-title -->
		</div><!-- container -->

		<!-- About the new -->
				
				<div class="twelve columns">

				<#list listNews as var>
					<!-- Post 1 -->
					<div class="post-preview preview-medium">
						<!-- Post Title & Meta -->
						<h2><a href="webnewsdetail.html?NEWID=${var[0]}" class="dark-link">${var[1]}</a></h2>
						<div class="post-meta">
							 来源： <span class="meta-author"><a>${var[3]}</a></span>
							<span class="meta-date">&nbsp;&nbsp;&nbsp;${var[2]}</span>
						</div>
						<!-- End Post Title & Meta -->
						<!-- Post Image -->
						<div class="four columns alpha post-image-wrap">
							<a href="${var[4]}" data-gal="prettyPhoto" class="post-image">
								<img src="${var[4]}" alt="${var[1]}">
								<div class="link-overlay fa fa-search"></div>
							</a>
						</div>
						<!-- End Post Image -->
						<div class="eight columns omega">
							<p>
								${var[5]}
							</p>
							<a class="btn colored" href="webnewsdetail.html?NEWID=${var[0]}">详情<i class="fa fa-chevron-circle-right" style="margin: 0 0 0 7px;"></i></a>
						</div>
        				<div class="clearfix"></div>
					</div>
					<!-- End Post 1 -->
				</#list>

				</div>
				
		<!-- End About the news -->	
		
	</div>
	<!-- container -->
	
	<!-- footer 包含底部 -->
	<#include "footerTemplate.ftl"> 
	<!-- footer 包含底部  -->

	<script type="text/javascript">
		$(window).load(function() {
			$("#News").addClass("current_page_item"); 
		});
	</script>
	<!-- End Document  -->
</body>
</html>