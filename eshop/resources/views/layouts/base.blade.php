<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	@if(Route::currentRouteName()=='home')
		<title>eShop (Largest ecommerce platform of Bangladesh)</title>
	@else
		<title>{{Route::currentRouteName()}}</title>
	@endif
	
    <link rel="shortcut icon" type="image/x-icon" href="asset/darazIcon.webp">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900,900italic&amp;subset=latin,latin-ext" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,400italic,600,600italic,700,700italic&amp;subset=latin,latin-ext" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="{{asset('assets/css/animate.css')}}">
	
	<link rel="stylesheet" type="text/css" href="{{asset('assets/css/bootstrap.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('assets/css/owl.carousel.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('assets/css/flexslider.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('assets/css/chosen.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('assets/css/mystyles.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('assets/css/color-01.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('assets/css/all.css')}}">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="{{asset('assets/css/font-awesome.min.css')}}">
	
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.7.1/nouislider.min.css" integrity="sha512-qveKnGrvOChbSzAdtSs8p69eoLegyh+1hwOMbmpCViIwj7rn4oJjdmMvWOuyQlTOZgTlZA0N2PXA7iA8/2TUYA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" integrity="sha512-aEe/ZxePawj0+G2R+AaIxgrQuKT68I28qh+wgLrcAJOz3rxCP+TwrK5SPN+E5I+1IQjNtcfvb96HDagwrKRdBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    @livewireStyles
</head>
<body class="home-page home-01 ">

	<!-- mobile menu -->
    <div class="mercado-clone-wrap">
        <div class="mercado-panels-actions-wrap">
            <a class="mercado-close-btn mercado-close-panels" href="#">x</a>
        </div>
        <div class="mercado-panels"></div>
    </div>

	<!--header-->
	<header id="header" class="header header-style-1">
		<div class="container-fluid">
			<div class="row">

				<div class="topbar-menu-area">
					<div class="container">
						<div class="topbar-menu left-menu">
							<ul>
								<li class="menu-item">
									<li><a href="/user/dashboard"><i class="fas fa-user"> </i> Dashboard | </a></li>
									{{-- <li><a href="#"><i class="fas fa-user"> </i> Dashboard | </a></li> --}}
								</li>
								<li class="menu-item" style="margin-left: 8px;">
									<a href="/wishlist"><i class="fas fa-heart"></i> Wishlist |</a>
									{{-- <a href="#"><i class="fas fa-heart"></i> Wishlist |</a> --}}
								</li>
								<li class="menu-item" style="margin-left: 8px;">
									<a href="/cart"><i class="fas fa-cart-shopping"></i> Cart |</a>
									{{-- <a href="#"><i class="fas fa-cart-shopping"></i> Cart |</a> --}}
								</li>
								<li class="menu-item" style="margin-left: 8px;">
									<a href="/checkout"><i class="fas fa-shopping-bag"></i> Checkout </a>
									{{-- <a href="#"><i class="fas fa-shopping-bag"></i> Checkout </a> --}}
								</li>
								
							</ul>
						</div>
						<div class="topbar-menu right-menu">
							<ul>
								<li class="menu-item lang-menu menu-item-has-children parent">
									<a title="English" href="#"><span class="img label-before"></span>Language: <b>English</b><i class="fa fa-angle-down" aria-hidden="true"></i></a>
									<ul class="submenu lang" >
										<li class="menu-item" ><a title="bangla" href="#">Bangla</a></li>
									</ul>
								</li>
								<li class="menu-item menu-item-has-children parent" >
									<a title="Taka (BDT)" href="#">Taka (BDT)<i class="fa fa-angle-down" aria-hidden="true"></i></a>
									<ul class="submenu curency" >
										<li class="menu-item" >
											<a title="Dollar (USD)" href="#">Dollar (USD)</a>
										</li>
									</ul>
								</li>
								
								@if(Route::has('login'))
									@auth
										@if(Auth::user()->utype === 'ADM')
											<li class="menu-item menu-item-has-children parent" >
												<a title="My Account" href="#">My Account({{Auth::user()->name}})<i class="fa fa-angle-down" aria-hidden="true"></i></a>
												<ul class="submenu curency" >
													<li class="menu-item" >
														<a title="Dashboard" href="{{ route('admin.dashboard')}}">Dashboard</a>
													</li>
													<li class="menu-item">
														<a title="Categories" href="{{route('admin.categories')}}">Categories</a>
													</li>
													<li class="menu-item">
														<a title="Products" href="{{route('admin.product')}}">All Products</a>
													</li>
													<li class="menu-item">
														<a title="Purchases" href="{{route('admin.purchase')}}">All Purchases</a>
													</li>
													<li class="menu-item">
														<a title="Product Balance" href="{{route('admin.balance')}}">Product Balance</a>
													</li>
													<li class="menu-item">
														<a title="Ledger" href="{{route('admin.ledger')}}">Ledger</a>
													</li>

													<li class="menu-item">
														<a href="{{route('admin.homecategories')}}" title="Manage Home Categories">Manage Home Categories</a>
													</li>
													<li class="menu-item">
														<a href="{{route('admin.sale')}}" title="Sale Setting">Sale Setting</a>
													</li>
													<li class="menu-item">
														<a href="{{route('admin.contact')}}" title="Contact Messages">Contact Messages</a>
													</li>
													<li class="menu-item">
														<a href="{{route('admin.orders')}}" title="Orders">All Orders</a>
													</li>
													
													<li class="menu-item">
														<a href="{{ route('logout')}}" onclick="event.preventDefault(); document.getElementById('logout-form').submit()">Logout</a>
													</li>
													<form id="logout-form" method="POST" action="{{ route('logout')}}">
														@csrf
								
													</form>
												</ul>
											</li>
										@else
											<li class="menu-item menu-item-has-children parent" >
												<a title="My Account" href="#">My Account({{Auth::user()->name}})<i class="fa fa-angle-down" aria-hidden="true"></i></a>
												<ul class="submenu curency" >
													<li class="menu-item" >
														<a title="Dashboard" href="{{ route('user.dashboard')}}">Dashboard</a>
													</li>
													<li class="menu-item" >
														<a title="My Orders" href="{{ route('user.orders')}}">My Orders</a>
													</li>
													<li class="menu-item">
														<a href="{{ route('logout')}}" onclick="event.preventDefault(); document.getElementById('logout-form').submit()">Logout</a>
													</li>
													<form id="logout-form" method="POST" action="{{ route('logout')}}">
														@csrf
								
													</form>
												</ul>
											</li>
										@endif
								@else 
									<li class="menu-item" ><a title="Register or Login" href="{{route('login')}}">Login</a></li>
									<li class="menu-item" ><a title="Register or Login" href="{{route('register')}}">Register</a></li>
								@endif
							@endif
						
							</ul>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="mid-section main-info-area">

						<div class="left-section img-center">

							<a href="/" class="link-to-home"><img src="{{asset('asset/darazLogo.png')}}"></a>
						</div>
							


						@livewire('header-search-component')

						<div class="wrap-icon right-section">
							
							@livewire('wishlist-count-component')

							@livewire('cart-count-component')
							
						</div>

					</div>
				</div>

				<div class="mainbar header-sticky">
					<ul class="navbarr">
						<li>
							@livewire('nav-all-categories-component')
						</li>
						@if(Route::currentRouteName()=='home')
							<li><a class="active" href="/">Home</a></li>
						@else
							<li><a href="/">Home</a></li>
						@endif
						@if(Route::currentRouteName()=='product.shop')
							<li><a class="active" href="/shop">Shop</a></li>
						@else
							<li><a href="/shop">Shop</a></li>
						@endif
						@if(Request::url()=='https://eshoppingbd.xyz/product-category/womens-fashion')
							<li><a class="active" href="/product-category/womens-fashion">Fashion</a></li>
						@else
							<li><a href="/product-category/womens-fashion">Fashion</a></li>
						@endif
						@if(Request::url()=='https://eshoppingbd.xyz/product-category/electronics')
							<li><a class="active" href="/product-category/electronics">Electronics</a></li>
						@else
							<li><a href="/product-category/electronics">Electronics</a></li>
						@endif
						@if(Request::url()=='https://eshoppingbd.xyz/product-category/mobile-laptop')
							<li><a class="active" href="/product-category/mobile-laptop">Mobile & Laptop</a></li>
						@else
							<li><a href="/product-category/mobile-laptop">Mobile & Laptop</a></li>
						@endif
						@if(Route::currentRouteName()=='blog')
							<li><a class="active" href="/blog">Blogs</a></li>
						@else
							<li><a href="/blog">Blogs</a></li>
						@endif

						@if(Route::currentRouteName()=='aboutus')
							<li><a class="active" href="/about-us">About Us</a></li>
						@else
							<li><a href="/about-us">About Us</a></li>
						@endif

						@if(Route::currentRouteName()=='contact')
							<li><a class="active" href="/contact-us">Contact Us</a></li>
						@else
							<li><a href="/contact-us">Contact Us</a></li>
						@endif

						{{-- 

						@if(Route::currentRouteName()=='competetions')
							<li><a class="active" href="/competetions">Competetions</a></li>
						@else
							<li><a href="/competetions">Competetions</a></li>
						@endif

						 --}}
						
					</ul>
				</div>
				
				<div id="mobile">
					<i id="bar" class="fas fa-outdent"></i>
				</div>

			</div>
		</div>
	</header>

	{{$slot}}

	{{-- Footer --}}
	<footer id="footer">
		<div class="wrap-footer-content footer-style-1">

			{{-- Newsletter --}}
			<div>
				<style>
					/* newsletter */
					#newsletter {
						display: flex;
						justify-content: space-between;
						flex-wrap: wrap;
						align-items: center;
						background-image: url("asset/newsletter.webp");
						height: 120px;
						background-repeat: no-repeat;
						background-position: 20% 30%;
						background-color: #041e42; 
					}

					#newsletter h4 {
						font-size: 22px;
						font-weight: 700;
						color: #fff;
						margin-left: 60px;
					}
	
					#newsletter p {
						font-size: 14px;
						font-weight: 600;
						color: #dbebfb;
						margin-left: 60px;
					}

					#newsletter p span {
						color: #ffb303;
						font-weight: bold;
					}

					#newsletter .form {
						display: flex;
						width: 40%;
					}

					#newsletter input {
						height: 40px;
						padding: 0 1.25em;
						font-size: 14px;
						width: 100%;
						border: 1px solid transparent;
						border-radius: 4px;
						outline: none;
						background-color: white;
						border-top-right-radius: 0;
						border-bottom-right-radius: 0;

					}

					#newsletter button{
						background-color: #088178;
						color: #fff;
						white-space: nowrap;
						padding: 5px;
						font-weight: 700;
						font-size: 14px;
						margin-right: 50px;
						border-top-right-radius: 4px;
						border-bottom-right-radius: 4px;
					}

					@media (max-width:477px) {
						#newsletter {
							display: flex;
							justify-content: space-between;
							flex-wrap: wrap;
							align-items: center;
							background-image: url("asset/newsletter.webp");
							height: 70px;
							background-repeat: no-repeat;
							/* background-position: 20% 30%; */
							background-color: #041e42; 
						}

						#newsletter h4 {
							font-size: 14px;
							color: #fff;
							margin-left: 10px;
						}
	
						#newsletter p {
							font-size: 10px;
							color: #dbebfb;
							margin-left: 10px;
						}

						#newsletter p span {
							color: #ffb303;
							font-weight: bold;
						}

						#newsletter .form {
							display: flex;
							width: 40%;
						}

						#newsletter input {
							height: 20px;
							padding: 0 1.25em;
							font-size: 14px;
							width: 100%;
							border: 1px solid transparent;
							border-radius: 4px;
							outline: none;
							background-color: white;
							border-top-right-radius: 0;
							border-bottom-right-radius: 0;

						}

						#newsletter button{
							background-color: #088178;
							color: #fff;
							white-space: nowrap;
							padding: 2px;
							font-weight: 700;
							font-size: 8px;

							border-top-right-radius: 2px;
							border-bottom-right-radius: 2px;
						}

					}
				</style>

				<!-- Newsletter -->
				<section id="newsletter">
					<div class="newstest">
						<h4>Sign Up For Newsletter</h4>
						<p>Get E-mail updates about <span>special offers</span></p>
					</div>
					<div class="form">
						<input type="text" placeholder="Email">
						<button>Sign Up</button>
					</div>
				</section>
			</div>

			<div class="main-footer-content">

				<div class="container">
					<div class="row">
						<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
							<div class="wrap-footer-item">
								<a href="/"><img src="asset/darazLogo.png" alt="" style="height: 60px;"></a>
								<h3 class="item-header" style="margin-top: 10px;">Contact Details</h3>
								<div class="item-content">
									<div class="wrap-contact-detail" >
										<ul>
											<li>
												<i class="fa fa-map-marker" aria-hidden="true"></i>
												<p class="contact-txt">KUET, Khulna</p>
											</li>
											<li style="margin-top: -10px;">
												<i class="fa fa-phone" aria-hidden="true"></i>
												<p class="contact-txt">+8801600111222, +8801700012345</p>
											</li>
											<li style="margin-top: -10px;">
												<i class="fa fa-envelope" aria-hidden="true"></i>
												<p class="contact-txt">contact@eshop.com</p>
											</li>											
										</ul>
									</div>
									<div class="item-content">
										<div class="wrap-list-item social-network">
											<ul>
												<li><a href="https://www.twitter.com/" class="link-to-item" title="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
												<li><a href="https://www.facebook.com/" class="link-to-item" title="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
												<li><a href="https://www.pinterest.com/" class="link-to-item" title="pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
												<li><a href="https://www.instagram.com/" class="link-to-item" title="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
												<li><a href="https://www.vimeo.com/" class="link-to-item" title="vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12 box-twin-content ">
							<div class="row">
								<div class="wrap-footer-item twin-item">
									<h3 class="item-header">My Account</h3>
									<div class="item-content">
										<div class="wrap-vertical-nav">
											<ul>
												<li class="menu-item"><a href="#" class="link-term">My Account</a></li>
												<li class="menu-item"><a href="/user/dashboard" class="link-term">Dashboard</a></li>
												<li class="menu-item"><a href="/user/orders" class="link-term">Delivery Status</a></li>
												<li class="menu-item"><a href="/cart" class="link-term">My Cart</a></li>
												<li class="menu-item"><a href="/wishlist" class="link-term">My Wishlist</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="wrap-footer-item twin-item">
									<h3 class="item-header">About</h3>
									<div class="item-content">
										<div class="wrap-vertical-nav">
											<ul>
												<li class="menu-item"><a href="/about-us" class="link-term">About Us</a></li>
												<li class="menu-item"><a href="#" class="link-term">Privacy Policy</a></li>
												<li class="menu-item"><a href="#" class="link-term">Terms & Conditions</a></li>
												<li class="menu-item"><a href="/contact-us" class="link-term">Contact Us</a></li>
												<li class="menu-item"><a href="/blog" class="link-term">Blogs</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>	
						
						<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
							<div class="wrap-footer-item">
								<h3 class="item-header">Dowload App</h3>
								<p>From App Store or Google Play</p>
								<div class="item-content">
									<div class="wrap-list-item apps-list">
										<ul>
											<li><a href="#" class="link-to-item" title="our application on apple store"><figure><img src="asset/play-store.png" alt="" width="128" height="36"></figure></a></li>
											<li><a href="#" class="link-to-item" title="our application on google play store"><figure><img src="asset/app-store.png" alt="" width="128" height="36"></figure></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="wrap-footer-item">
								<h3 class="item-header">Secured Payment Gateways</h3>
								<img src="asset/payment-gateway.png" alt="" width="200" height="36">
							</div>
						</div>
					</div>
				</div>

			</div>

			<div class="coppy-right-box" style="margin-top: 15px">
				<style>
					.copyright {
						width: 100%;
						text-align: center;
						color: #bbb7b7;
						padding: 5px;
					  }
				</style>
				<div class="container">
					<div class="copyright">
						<p>© copyright 2023 - www.eshop.com</p>
				  	</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</footer>
	
	<script src="{{ asset('assets/js/jquery-1.12.4.minb8ff.js?ver=1.12.4')}}"></script>
	<script src="{{ asset('assets/js/jquery-ui-1.12.4.minb8ff.js?ver=1.12.4')}}"></script>
	<script src="{{ asset('assets/js/bootstrap.min.js')}}"></script>
	<script src="{{ asset('assets/js/jquery.flexslider.js')}}"></script>
    <script src="{{ asset('assets/js/chosen.jquery.min.js')}}"></script> 
	<script src="{{ asset('assets/js/owl.carousel.min.js')}}"></script>
	<script src="{{ asset('assets/js/jquery.countdown.min.js')}}"></script>
	<script src="{{ asset('assets/js/jquery.sticky.js')}}"></script>
	<script src="{{ asset('assets/js/functions.js')}}"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.7.1/nouislider.min.js" integrity="sha512-UOJe4paV6hYWBnS0c9GnIRH8PLm2nFK22uhfAvsTIqd3uwnWsVri1OPn5fJYdLtGY3wB11LGHJ4yPU1WFJeBYQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js" integrity="sha512-GDey37RZAxFkpFeJorEUwNoIbkTwsyC736KNSYucu1WJWFK9qTdzYub8ATxktr6Dwke7nbFaioypzbDOQykoRg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    @livewireScripts

	@stack('scripts')
</body>
</html>