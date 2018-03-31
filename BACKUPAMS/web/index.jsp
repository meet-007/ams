<%-- 
    Document   : index
    Created on : 8 Oct, 2017, 12:19:56 PM
    Author     : meet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Apartment management system</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Global Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<link href="css/owl.theme.css" rel="stylesheet">
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<![endif]-->
<script>
$(document).ready(function() { 
	$("#owl-demo").owlCarousel({
 
		autoPlay: 3000, //Set AutoPlay to 3 seconds
		autoPlay:true,
		items : 3,
		itemsDesktop : [640,5],
		itemsDesktopSmall : [414,4]
 
	});
	
}); 
</script>
</head>
<body>
	<!-- banner -->
	<div class="banner">
		<div class="header">
			<div class="container">
				<div class="header-left">
					<div class="w3layouts-logo">
						<h1>
							<a href="index.html">AMS</a>
						</h1>
					</div>
				</div>
				<div class="header-right">
                                    <p><i class="fa fa-sign-in" aria-hidden="true"></i><a href="Login.jsp?page=login">login</a></p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="container">
				<div class="top-nav">
						<nav class="navbar navbar-default">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li><a class="active list-border" href="index.jsp">Home</a></li>
									<li><a href="About.jsp?page=About Us">About</a></li>
									<li><a href="Services.jsp?page= Our Services">Services</a></li>
								
									<li><a href="Contact.jsp?page=Contact us">Contact</a></li>
								</ul>	
								<div class="clearfix"> </div>
							</div>	
						</nav>		
				</div>
				<!-- w3-banner -->
				<div class="w3-banner">
					<div class="w3layouts-phone">
						<p>Manage your apartments easily with AMS</p>
						<h3>MY<span>AMS</span></h3>
                                                <a href="S_admin_reg.jsp?page=Registration"> <button class="btn-default btn-lg">Get started</button></a>
                                        </div>
                                    
				</div>
				<!-- //w3-banner -->
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- welcome -->
	<div class="tabs">
		<div class="container">
			<div class="col-md-6 tabs-left">
				<div class="col-xs-2 tab-grid-left"> <!-- required for floating -->
					<!-- Nav tabs -->
					 <ul class="nav nav-tabs">
						<li class="active"><a href="#Tab1" data-toggle="tab">Tab1</a></li>
						<li><a href="#Tab2" data-toggle="tab">Tab2</a></li>
						<li><a href="#Tab3" data-toggle="tab">Tab3</a></li>
					</ul>
				</div>
				<div class="col-xs-10 tab-grid-right">
					<!-- Tab panes -->
					<div class="tab-content">
						<div class="tab-pane active" id="Tab1">
							<div class="w3-text">
								<h3 class="title">Welcome</h3>
								<p>Here you can manage your society easily and in efficient manner. 
								<span>It provides online maintenence collection,complain box,Accounting,Email notification and many more</span>
								</p>
							</div>
						</div>
						<div class="tab-pane" id="Tab2">
							<div class="w3-text">
								<h3 class="title">Offers</h3>
								<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut At vero eos et accusamus et iusto odio dignissimos ducimus qui 
								<span>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse potenti. Vivamus feugiat suscipit velit posuere ornare.</span>
								</p>
							</div>
						</div>
						<div class="tab-pane" id="Tab3">
							<div class="w3-text">
								<h3 class="title">Advantages</h3>
								<p>Qapiente itaque earum rerum hic tenetur a delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut At vero eos et accusamus et iusto odio praesentium voluptatum 
								<span>Curabitur ac auctor nunc. Praesent vitae tortor ac leo commodo laoreet nec non nisi. Fusce ornare, augue tristique ornare dictum, elit magna viverra elit</span>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-6 tabs-right ">
				<img src="images/welcome.jpg" alt="">
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //welcome -->
	<!-- welcome-bottom -->
	<div class="welcome-bottom">
		<div class="container">
			<div class="wthree-welcome-bottom-grids">
				<div class="col-md-6 wthree-welcome-bottom-left">
					<h4>Mauris molestie ultrices molestie. Sed rhoncus interdum ipsum, id fermentum sem pellentesque ut.</h4>
					<p>Praesent egestas egestas felis, sit amet posuere massa malesuada eget. Phasellus sem urna, euismod sit amet orci laoreet, laoreet molestie purus. Nulla leo purus, blandit nec efficitur tempor, interdum vel enim. <span>Proin mauris mi, lobortis quis quam at, tristique dictum arcu. In lobortis, massa in porta posuere, orci orci tincidunt risus, vitae ultrices enim eros vel lacus.</span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt tellus at est fermentum ultricies. Cras cursus semper libero. Vivamus non elit a diam elementum vulputate ac quis nisi. Suspendisse tellus massa, tempus in tristique a, eleifend non est. Duis consequat facilisis laoreet. </p>
				</div >
				<div class="col-md-6 wthree-welcome-bottom-left">
					<h4>Mauris molestie ultrices molestie. Sed rhoncus interdum ipsum, id fermentum sem pellentesque ut.</h4>
					<p>Praesent egestas egestas felis, sit amet posuere massa malesuada eget. Phasellus sem urna, euismod sit amet orci laoreet, laoreet molestie purus. Nulla leo purus, blandit nec efficitur tempor, interdum vel enim. <span>Proin mauris mi, lobortis quis quam at, tristique dictum arcu. In lobortis, massa in porta posuere, orci orci tincidunt risus, vitae ultrices enim eros vel lacus.</span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt tellus at est fermentum ultricies. Cras cursus semper libero. Vivamus non elit a diam elementum vulputate ac quis nisi. Suspendisse tellus massa, tempus in tristique a, eleifend non est. Duis consequat facilisis laoreet. </p>
				</div >
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //welcome-bottom -->
	<!-- markets -->
	<div class="markets" id="markets">
		<div class="container">
			<div class="wthree-heading">
				<h3>Our Services</h3>
			</div>
			<div class="markets-grids">
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-spoon" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Suspendisse</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-credit-card-alt" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Aliquam</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-cutlery" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Consectetur</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-coffee" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Bibendum</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-user" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Vestibulum</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-thumbs-up" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Fermentum</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat at lectus ullamcorper, nec interdum neque hendrerit.</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //markets -->
	<!-- feedback -->
	<div class="jarallax feedback">
		<div class="container">
			<div class="wthree-heading feedback-heading">
				<h3>Customer Feedback</h3>
			</div>
			<div class="agileits-feedback-grids">
				<div id="owl-demo" class="owl-carousel owl-theme">
					<div class="item">
						<div class="feedback-info">
							<div class="feedback-top">
								<p> Sed semper leo metus, a lacinia eros semper at. Etiam sodales orci sit amet vehicula pellentesque. </p>
							</div>
							<div class="feedback-grids">
								<div class="feedback-img">
									<img src="images/f1.jpg" alt="" />
								</div>
								<div class="feedback-img-info">
									<h5>Peter Parker</h5>
									<p>Vestibulum</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>	
					</div>
					<div class="item">
						<div class="feedback-info">
							<div class="feedback-top">
								<p> Sed semper leo metus, a lacinia eros semper at. Etiam sodales orci sit amet vehicula pellentesque. </p>
							</div>
							<div class="feedback-grids">
								<div class="feedback-img">
									<img src="images/f2.jpg" alt="" />
								</div>
								<div class="feedback-img-info">
									<h5>Mary Jane</h5>
									<p>Vestibulum</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>	
					</div>
					<div class="item">
						<div class="feedback-info">
							<div class="feedback-top">
								<p> Sed semper leo metus, a lacinia eros semper at. Etiam sodales orci sit amet vehicula pellentesque. </p>
							</div>
							<div class="feedback-grids">
								<div class="feedback-img">
									<img src="images/f3.jpg" alt="" />
								</div>
								<div class="feedback-img-info">
									<h5>Steven Wilson</h5>
									<p>Vestibulum</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>	
					</div>
					<div class="item">
						<div class="feedback-info">
							<div class="feedback-top">
								<p> Sed semper leo metus, a lacinia eros semper at. Etiam sodales orci sit amet vehicula pellentesque. </p>
							</div>
							<div class="feedback-grids">
								<div class="feedback-img">
									<img src="images/f4.jpg" alt="" />
								</div>
								<div class="feedback-img-info">
									<h5>Peter Parker</h5>
									<p>Vestibulum</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>	
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //feedback -->
	<!-- newsletter -->
	<div class="jarallax newsletter">
		<div class="container">
			<div class="wthree-heading">
				<h3>Subscribe Now</h3>
			</div>
		</div>
		<div class="w3-agileits-newsletter">
			<div class="subscribe-grid">
				<form action="#" method="post">
					<input type="text" placeholder="Subscribe" name="Subscribe" required="">
					<button class="btn1"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
				</form>
			</div>
		</div>
	</div>
	<!-- //newsletter -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="agile-footer-grids">
				<div class="col-md-4 agile-footer-grid">
					<h4>History of Us</h4>
					<p>Pellentesque urna ex, ultricies a nunc at, pretium maximus nisi. Vestibulum non auctor diam. Mauris eget consectetur mauris. <span>Aenean leo elit, accumsan vel elit vitae, mattis ultricies lacus. Cras consectetur justo lorem, sed dictum sapien eleifend at.</span></p>
				</div>
				<div class="col-md-4 agile-footer-grid">
					<h4>Twitter Posts</h4>
					<ul class="w3agile_footer_grid_list">
						<li>Ut aut reiciendis voluptatibus maiores <a href="#">http://example.com</a> alias, ut aut reiciendis.
							<span><i class="fa fa-twitter" aria-hidden="true"></i> 02 days ago</span></li>
						<li>Itaque earum rerum hic tenetur a sapiente delectus <a href="#">http://mail.com</a> ut aut
							voluptatibus.<span><i class="fa fa-twitter" aria-hidden="true"></i> 03 days ago</span></li>
					</ul>
				</div>
				<div class="col-md-2 agile-footer-grid">
					<h4>Events</h4>
					<ul>
						<li>12th Aug <a href="single.html">Curabitur</a></li>
						<li>10th Sept <a href="single.html">Fusce urna</a></li>
						<li>24th Sept <a href="single.html">Praesent</a></li>
						<li>17th Oct <a href="single.html">Malesuada </a></li>
						<li>09th Dec <a href="single.html">Cum sociis</a></li>
					</ul>
				</div>
				<div class="col-md-2 agile-footer-grid">
					<h4>Navigation</h4>
					<ul>
						<li class="text"><a href="index.jsp">Home</a></li>
						<li class="text"><a href="About.jsp?page=About Us">About</a></li>
						<li class="text"><a href="Services.jsp?page=Our Services">Services</a></li>
                                                <li class="text"><a href="Contact.jsp?page=Contact us">Contact</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<!-- copyright -->
	<div class="agileits-w3layouts-copyright">
		<div class="container">
			<p>© 2017 Global Food. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
		</div>
	</div>
	<!-- //copyright -->
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<script src="js/owl.carousel.js"></script>
	<script src="js/jarallax.js"></script>
	<script type="text/javascript">
				/* init Jarallax */
				$('.jarallax').jarallax({
					speed: 0.5,
					imgWidth: 1366,
					imgHeight: 768
				})
			</script>
</body>	
</html>
