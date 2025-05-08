<main id="main" class="main-site">

    <div class="container">

        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="/" class="link">home</a></li>
                <li class="item-link"><span>Cart</span></li>
            </ul>
        </div>
        <div class="main-content-area">
            @if(Cart::instance('cart')->count() > 0)

            <div class="wrap-iten-in-cart">
                @if(Session::has('success_message'))
                    <div class="alert alert-success" role="alert">
                        <strong>Success: </strong>{{Session::get('success_message')}}
                    </div>
                @endif

                @if(Cart::instance('cart')->count() > 0)
                <h3 class="box-title">Products Name</h3>
                <ul class="products-cart">
                    @foreach (Cart::instance('cart')->content() as $item)
                        <li class="pr-cart-item">
                            <div class="product-image">
                                <figure><img src="{{ asset('asset/product_image')}}/{{$item->model->image}}" alt="{{$item->model->name}}"></figure>
                            </div>
                            <div class="product-name">
                                <a class="link-to-product" href="{{route('product.details', ['slug' => $item->model->slug])}}">{{$item->model->name}}</a>
                            </div>
                            <div class="price-field produtc-price"><p class="price">${{$item->model->regular_price}}</p></div>
                            <div class="quantity" >
                                <div class="quantity-input">
                                    <input type="text" name="product-quatity" value="{{$item->qty}}" data-max="120" pattern="[0-9]*" >									
                                    <a class="btn btn-increase" href="#" wire:click.prevent="increaseQuantity('{{$item->rowId}}')"></a>
                                    <a class="btn btn-reduce" href="#" wire:click.prevent="decreaseQuantity('{{$item->rowId}}')"></a>
                                </div>
                            </div>
                            

                            {{-- <div class="text-center" data-title="Stock">
                                <div class="detail-qty border radius m-auto">
                                    <a href="#" class="qty-down" wire:click.prevent="increaseQuantity('{{$item->rowId}}')"><i class="fi-rs-angle-small-down"></i></a>
                                    <span class="qty-val">{{$item->qty}}</span>
                                    <a href="#" class="qty-up" wire:click.prevent="decreaseQuantity('{{$item->rowId}}')"><i class="fi-rs-angle-small-up"></i></a>
                                </div>
                            </div> --}}

                            <div class="price-field sub-total"><p class="price">${{$item->subtotal}}</p></div>
                            <div class="delete">
                                <a href="#" wire:click.prevent="destroy('{{$item->rowId}}')" class="btn btn-delete" title="">
                                    <span>Delete from your cart</span>
                                    <i class="fa fa-times-circle" aria-hidden="true"></i>
                                </a>
                            </div>
                        </li>
                    @endforeach											
                </ul>
                @else
                    <p>No item in cart</p>
                @endif
            </div>

            <div class="summary">
                <div class="order-summary">
                    <h4 class="title-box">Order Summary</h4>
                    <p class="summary-info"><span class="title">Subtotal</span><b class="index">৳{{Cart::instance('cart')->subtotal()}}</b></p>
                    <p class="summary-info"><span class="title">Tax</span><b class="index">৳{{Cart::instance('cart')->tax()}}</b></p>
                    <p class="summary-info"><span class="title">Shipping</span><b class="index">Free Shipping</b></p>
                    <p class="summary-info total-info "><span class="title">Total</span><b class="index">৳{{Cart::instance('cart')->total()}}</b></p>
                </div>
                <div class="checkout-info">
                    {{-- <label class="checkbox-field">
                        <input class="frm-input " name="have-code" id="have-code" value="" type="checkbox"><span>I have promo code</span>
                    </label> --}}
                    <a class="btn btn-checkout" href="#" wire:click.prevent="checkout">Checkout</a>
                    <a class="link-to-shop" href="{{route('product.shop')}}">Continue Shopping<i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a>
                </div>
                
            </div>

            @else
                <div class="text-center" style="padding: 30px 0;">
                    <h1>Your Cart is empty</h1>
                    <p>Add items to Cart Now</p>
                    <a href="/shop" class="btn btn-success">Shop Now</a>
                </div>
            @endif

        </div><!--end main content area-->
    </div>

</main>
