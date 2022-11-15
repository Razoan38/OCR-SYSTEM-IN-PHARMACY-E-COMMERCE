@extends('website.master')

@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">checkout</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="index.html">Shop</a></li>
                        <li>checkout</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <section class="checkout-wrapper section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="checkout-steps-form-style-1">
                        <ul id="accordionExample">
                            <li>
                                <h6 class="title">Checkout Form </h6>
                                <form action="{{route('new-order')}}" method="POST">
                                    @csrf
                                    <section class="checkout-steps-form-content collapse show" id="collapseThree" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="single-form form-default">
                                                    <label>Full Name</label>
                                                    <div class="row">
                                                        <div class="col-md-12 form-input form">
                                                            @if(isset($customer->name))
                                                                <input type="text" value="{{$customer->name}}" readonly/>
                                                            @else
                                                                <input type="text" name="name" placeholder="First Name"/>
                                                                <span class="text-danger">{{$errors->has('name') ? $errors->first('name') : ''}}</span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="single-form form-default">
                                                    <label>Email Address</label>
                                                    <div class="form-input form">
                                                        @if(isset($customer->email))
                                                            <input type="text" value="{{$customer->email}}" readonly/>
                                                        @else
                                                            <input type="email" name="email" placeholder="Email Address"/>
                                                            <span class="text-danger">{{$errors->has('email') ? $errors->first('email') : ''}}</span>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="single-form form-default">
                                                    <label>Phone Number</label>
                                                    <div class="form-input form">
                                                        @if(isset($customer->mobile))
                                                            <input type="text" value="{{$customer->mobile}}" readonly/>
                                                        @else
                                                            <input type="number" name="mobile" placeholder="Phone Number"/>
                                                            <span class="text-danger">{{$errors->has('mobile') ? $errors->first('mobile') : ''}}</span>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-form form-default">
                                                    <label>Delivery Address</label>
                                                    <div class="form-input form">
                                                        <textarea name="delivery_address" placeholder="Delivery Address"></textarea>
                                                        <span class="text-danger">{{$errors->has('delivery_address') ? $errors->first('delivery_address') : ''}}</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <label>Select You Payment Method</label>
                                                <div class="single-checkbox checkbox-style-3">
                                                    <label class="me-4"><input type="radio" name="payment_method" value="1"> Cash On Delivery Payment</label>
                                                    <label><input type="radio" name="payment_method" value="2"> Online Payment</label>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-form button">
                                                    <button type="submit" class="btn">Confirm Order</button>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="checkout-sidebar">
                        <div class="checkout-sidebar-price-table">
                            <h5 class="title text-center">Your Shopping Cart Summery</h5>
                            <div class="sub-total-price">
                                @php($sum=0)
                                @foreach($cartProducts as $cartProduct)
                                <div class="total-price">
                                    <p class="value">{{$cartProduct->name}}: ({{$cartProduct->price}} * {{$cartProduct->quantity}})</p>
                                    <p class="price">Tk. {{$cartProduct->price * $cartProduct->quantity}}</p>
                                </div>
                                    @php($sum = $sum + ($cartProduct->quantity*$cartProduct->price))
                                @endforeach
                            </div>
                            <div class="total-payable">
                                <div class="payable-price">
                                    <p class="value">Subtotal Price(TK):</p>
                                    <p class="price">{{number_format($sum)}}</p>
                                </div>
                                <div class="payable-price">
                                    <p class="value">Tax Amount(TK):</p>
                                    @php($tax = round((($sum*15)/100)))
                                    <p class="price">${{number_format($tax)}}</p>
                                </div>
                                <div class="payable-price">
                                    <p class="value">Shipping Cost(TK):</p>
                                    @php($shipping=500)
                                    <p class="price">{{$shipping}}</p>
                                </div>
                                <div class="payable-price">
                                    <p class="value">Total Payable(TK):</p>
                                    @php($grandTotal = $sum + $tax + $shipping)
                                    <p class="price">{{number_format($grandTotal)}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="checkout-sidebar-banner mt-30">
                            <a href="">
                                <img src="{{asset('/')}}website/assets/images/banner/banner.jpg" alt="#">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
