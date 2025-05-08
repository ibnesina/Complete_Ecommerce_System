<div>
    <main id="main" class="main-site left-sidebar">

		<div class="container">

			<div class="wrap-breadcrumb">
				<ul>
					<li class="item-link"><a href="/" class="link">Home</a></li>
					<li class="item-link"><span>Contact us</span></li>
				</ul>
			</div>
			<div class="row">
				<div class=" main-content-area">
					<div class="wrap-contacts ">
						<div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
							<div class="contact-box contact-form">
								<h2 class="box-title">Leave a Message</h2>
                                @if(Session::has('message'))
                                    <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                                @endif
								<form action="#" method="get" name="frm-contact" wire:submit.prevent="sendMessage">

									<label for="name">Name<span>*</span></label>
									<input type="text" value="" id="name" name="name" wire:model="name">
                                    @error('name')
                                        <p class="text-danger">{{$message}}</p>
                                    @enderror

									<label for="email">Email<span>*</span></label>
									<input type="text" value="" id="email" name="email" wire:model="email">
                                    @error('email')
                                        <p class="text-danger">{{$message}}</p>
                                    @enderror

									<label for="phone">Number Phone</label>
									<input type="text" value="" id="phone" name="phone" wire:model="phone">
                                    @error('phone')
                                        <p class="text-danger">{{$message}}</p>
                                    @enderror

									<label for="comment">Comment</label>
									<textarea name="comment" id="comment" wire:model="comment"></textarea>
                                    @error('comment')
                                        <p class="text-danger">{{$message}}</p>
                                    @enderror

									<input type="submit" name="ok" value="Submit" >
									
								</form>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
							<div class="contact-box contact-info">
								<div class="wrap-map">
									{{-- <div class="mercado-google-maps"
										 id="az-google-maps57341d9e51968"
										 data-hue=""
										 data-lightness="1"
										 data-map-style="2"
										 data-saturation="-100"
										 data-modify-coloring="false"
										 data-title_maps="Kute themes"
										 data-phone="088-465 9965 02"
										 data-email="kutethemes@gmail.com"
										 data-address="Z115 TP. Thai Nguyen"
										 data-longitude="-0.120850"
										 data-latitude="51.508742"
										 data-pin-icon=""
										 data-zoom="16"
										 data-map-type="ROADMAP"
										 data-map-height="263">
									</div> --}}
									<!--Google map-->
									<div id="map-container-google-1" class="z-depth-1-half map-container" >
										{{-- <iframe src="https://www.google.com/maps/place/Khulna+University+of+Engineering+%26+Technology/@22.8934854,89.502516,15.32z/data=!4m6!3m5!1s0x39ff9bda1d0ff6e5:0x123a926908efcd0c!8m2!3d22.9005524!4d89.5023565!16zL20vMGRfMl9x?entry=ttu" frameborder="0"
										style="border:0" allowfullscreen></iframe> --}}
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11777.453588878836!2d89.50251604564451!3d22.89348537585675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff9bda1d0ff6e5%3A0x123a926908efcd0c!2sKhulna%20University%20of%20Engineering%20%26%20Technology!5e0!3m2!1sen!2sbd!4v1688407137675!5m2!1sen!2sbd" width="500" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
									</div>
									
									<!--Google Maps-->
								</div>
								<h2 class="box-title">Contact Detail</h2>
								<div class="wrap-icon-box">

									<div class="icon-box-item">
										<i class="fa fa-envelope" aria-hidden="true"></i>
										<div class="right-info">
											<b>Email</b>
											<p>support@admin.com</p>
										</div>
									</div>

									<div class="icon-box-item">
										<i class="fa fa-phone" aria-hidden="true"></i>
										<div class="right-info">
											<b>Phone</b>
											<p>+8801600111222</p>
										</div>
									</div>

									<div class="icon-box-item">
										<i class="fa fa-map-marker" aria-hidden="true"></i>
										<div class="right-info">
											<b>Mail Office</b>
											<p>New York City<br />New York, USA</p>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div><!--end main products area-->

			</div><!--end row-->

		</div><!--end container-->

	</main>
</div>
