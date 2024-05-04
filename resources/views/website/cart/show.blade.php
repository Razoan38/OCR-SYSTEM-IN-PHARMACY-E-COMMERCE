@extends('website.master')

@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Cart</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="{{ route('home') }}"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="{{ route('home') }}">Pharma</a></li>
                        <li>Cart</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="shopping-cart section">
        <div class="container">
            <div class="cart-list-head">
                <p class="text-center text-success">{{Session::get('message')}}</p>
                <div class="cart-list-title">
                    <div class="row">
                        <div class="col-lg-1 col-md-1 col-12">
                        </div>
                        <div class="col-lg-4 col-md-3 col-12">
                            <p>Product Info</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Quantity</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Unit Price(TK)</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Sub Total(TK)</p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <p>Remove</p>
                        </div>
                    </div>
                </div>
                @php($sum=0)
                @foreach($products as $product)
                <div class="cart-single-list">
                    <div class="row align-items-center">
                        <div class="col-lg-1 col-md-1 col-12">
                            <a href=""><img src="{{asset($product->attributes->image)}}" alt="#"></a>
                        </div>
                        <div class="col-lg-4 col-md-3 col-12">
                            <h5 class="product-name"><a href="">
                                    {{$product->name}}</a></h5>
                            <p class="product-des">
                                <span><em>Type:</em> Mirrorless</span>
                                <span><em>Color:</em> Black</span>
                            </p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <form action="{{route('update-cart-product', ['id' => $product->id])}}" method="POST">
                                @csrf
                                <div class="input-group mb-3">
                                    <input type="number" name="qty" class="form-control" value="{{$product->quantity}}" min="1"/>
                                    <button class="btn btn-outline-secondary" type="submit">Update</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>{{$product->price}}</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>{{$product->quantity*$product->price}}</p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <a class="remove-item" onclick="return confirm('Are you sure to remove this..');" href="{{route('remove-cart-product', ['id' => $product->id])}}"><i class="lni lni-close"></i></a>
                        </div>
                    </div>
                </div>
                 @php($sum = $sum + ($product->quantity*$product->price))
                @endforeach
            </div>
            <div class="row">
                <div class="col-12">

                    <div class="total-amount">
                        <div class="row">
                            <div class="col-lg-8 col-md-6 col-12">
                                {{-- <div class="left">
                                    <div class="coupon">
                                        <form action="#" target="_blank">
                                            <input name="Coupon" placeholder="Enter Your Coupon">
                                            <div class="button">
                                                <button class="btn">Apply Coupon</button>
                                            </div>
                                        </form>
                                    </div>
                                </div> --}}
                            </div>
                            <div class="col-lg-4 col-md-6 col-12">
                                <div class="right">
                                    <ul>
                                        <li>Cart Subtotal (TK.) <span>{{number_format($sum)}} </span></li>
                                        <li>Tax Amount (TK.) (15%)
                                            @php($tax = round((($sum*15)/100)))
                                            <span>{{number_format($tax)}}</span>
                                        </li>
                                        <li>Shipping (TK.)
                                            @php($shipping=50)
                                            <span>{{$shipping}}</span></li>
                                        <li class="last">Total Payable (TK.)
                                            @php($grandTotal = $sum + $tax + $shipping)
                                            <span>{{number_format($grandTotal)}}</span>
                                        </li>
                                    </ul>

                                    <?php
                                        Session::put('order_total', $grandTotal);
                                        Session::put('tax_total', $tax);
                                        Session::put('shipping_total', $shipping);
                                    ?>
                                    <div class="button">
                                        <a href="{{route('checkout')}}" class="btn">Checkout</a>
                                        <a href="{{route('home')}}" class="btn btn-alt">Continue shopping</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
