@extends('website.master')

@section('body')
    <section class="hero-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12 custom-padding-right">
                    <div class="slider-head">

                        <div class="hero-slider">

                            <div class="single-slider" style="background-image: url({{asset('/')}}website/assets/images/hero/sh1.jpg);">
                                <div class="content">
                                    <h1 class="text-black">No restocking fee ($35 savings)</h1>
                                    <h6 class="text-black">Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut
                                        labore dolore magna aliqua.</h6>
                                    <h3 class="text-black">Now Only $320.99</h3>
                                    <div class="button">
                                        <a href="product-grids.html" class="btn">Shop Now</a>
                                    </div>
                                </div>
                            </div>


                            <div class="single-slider" style="background-image: url({{asset('/')}}website/assets/images/hero/sh2.jpg);">
                                <div class="content">
                                    <h1 class="text-black">Big Sale Offer
                                    </h1>
                                    <h6 class="text-black">Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut
                                        labore dolore magna aliqua.</h6>
                                    <h3>Combo Only:  $50.00</h3>
                                    <div class="button">
                                        <a href="product-grids.html" class="btn">Shop Now</a>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="row">
                        <div class="col-lg-12 col-md-6 col-12 md-custom-padding">

                            <div class="hero-small-banner" style="background-image: url('{{asset('/')}}website/assets/images/hero/sh3.jpg');">
                                <div class="content">
                                    <h2 class="text-black">
                                        <span class="text-warning">New line required</span>
                                        Medical Equipment
                                    </h2>
                                    <h3>$259.99</h3>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-12 col-md-6 col-12">

                            <div class="hero-small-banner style2">
                                <div class="content">
                                    <h2>Weekly Sale!</h2>
                                    <p>Saving up to 50% off all online store items this week.</p>
                                    <div class="button">
                                        <a class="btn" href="product-grids.html">Shop Now</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="featured-categories section bg-soft-dark">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="text-black">Featured Categories</h2>
                        <p class="text-black">There are many variations of passages of Lorem Ipsum available, but the majority have
                            suffered alteration in some form.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12">

                    <div class="single-category">
                        <h3 class="heading">ACI Limited</h3>
                        <ul>
                            <li><a href="{{route('home')}}">Capsules</a></li>
                            <li><a href="{{route('home')}}">Topical medicines</a></li>
                            <li><a href="{{route('home')}}">Suppositories</a></li>
                            <li><a href="{{route('home')}}">Drops</a></li>
                            <li><a href="{{route('home')}}">Inhalersl</a></li>
                        </ul>
                        <div class="images">
                            <img src="{{asset('/')}}website/assets/images/featured-categories/f1.jpg" alt="#" height="200" width="200">
                        </div>
                    </div>

                </div>
                <div class="col-lg-4 col-md-6 col-12">

                    <div class="single-category">
                        <h3 class="heading">Alco Pharma.</h3>
                        <ul>
                            <li><a href="{{route('home')}}">Capsules</a></li>
                            <li><a href="{{route('home')}}">Topical medicines</a></li>
                            <li><a href="{{route('home')}}">Suppositories</a></li>
                            <li><a href="{{route('home')}}">Drops</a></li>
                            <li><a href="{{route('home')}}">Inhalersl</a></li>
                        </ul>
                        <div class="images">
                            <img src="{{asset('/')}}website/assets/images/featured-categories/f2.jpg" alt="#" height="230" width="200">
                        </div>
                    </div>

                </div>
                <div class="col-lg-4 col-md-6 col-12">

                    <div class="single-category">
                        <h3 class="heading">ACME  Ltd.</h3>
                        <ul>
                            <li><a href="{{route('home')}}">Capsules</a></li>
                            <li><a href="{{route('home')}}">Topical medicines</a></li>
                            <li><a href="{{route('home')}}">Suppositories</a></li>
                            <li><a href="{{route('home')}}">Drops</a></li>
                            <li><a href="{{route('home')}}">Inhalersl</a></li>
                        </ul>
                        <div class="images">
                            <img src="{{asset('/')}}website/assets/images/featured-categories/7.jpg" alt="#" height="230" width="200">
                        </div>
                    </div>

                </div>
                <div class="col-lg-4 col-md-6 col-12">

                    <div class="single-category">
                        <h3 class="heading">Renata Limited</h3>
                        <ul>
                            <li><a href="{{route('home')}}">Capsules</a></li>
                            <li><a href="{{route('home')}}">Topical medicines</a></li>
                            <li><a href="{{route('home')}}">Suppositories</a></li>
                            <li><a href="{{route('home')}}">Drops</a></li>
                            <li><a href="{{route('home')}}">Inhalersl</a></li>
                        </ul>
                        <div class="images">
                            <img src="{{asset('/')}}website/assets/images/featured-categories/f3.jpg" alt="#" height="230" width="200">
                        </div>
                    </div>

                </div>
                <div class="col-lg-4 col-md-6 col-12">

                    <div class="single-category">
                        <h3 class="heading">Beximco Ltd</h3>
                        <ul>
                            <li><a href="{{route('home')}}">Capsules</a></li>
                            <li><a href="{{route('home')}}">Topical medicines</a></li>
                            <li><a href="{{route('home')}}">Suppositories</a></li>
                            <li><a href="{{route('home')}}">Drops</a></li>
                            <li><a href="{{route('home')}}">Inhalersl</a></li>
                        </ul>
                        <div class="images">
                            <img src="{{asset('/')}}website/assets/images/featured-categories/6.jpg" alt="#" height="230" width="200">
                        </div>
                    </div>

                </div>
                <div class="col-lg-4 col-md-6 col-12">

                    <div class="single-category">
                        <h3 class="heading">Opsonin Pharma Ltd.</h3>
                        <ul>
                            <li><a href="{{route('home')}}">Capsules</a></li>
                            <li><a href="{{route('home')}}">Topical medicines</a></li>
                            <li><a href="{{route('home')}}">Suppositories</a></li>
                            <li><a href="{{route('home')}}">Drops</a></li>
                            <li><a href="{{route('home')}}">Inhalersl</a></li>
                        </ul>
                        <div class="images">
                            <img src="{{asset('/')}}website/assets/images/featured-categories/5.jpg" alt="#" height="200" width="200">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>


    <section class="trending-product section bg-soft-secondary">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="text-black">Trending Product</h2>
                        <p class="text-black">There are many variations of passages of Lorem Ipsum available, but the majority have
                            suffered alteration in some form.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($products as $product)
                <div class="col-lg-3 col-md-6 col-12">

                    <div class="single-product">
                        <div class="product-image">
                            <img src="{{asset($product->image)}}" alt="#">
                            <form action="{{route('add-to-cart', ['id' => $product->id])}}" method="POST">
                                @csrf
                                <div class="button">
                                    <input type="hidden" value="1" name="qty"/>
                                    <button type="submit" class="btn"><i class="lni lni-cart"></i> Add to Cart</button>
                                </div>
                            </form>
                        </div>
                        <div class="product-info">
                            <span class="category">{{$product->category->name}}</span>
                            <h4 class="title">
                                <a href="{{route('detail', ['id' => $product->id])}}">{{$product->name}}</a>
                            </h4>
                            <ul class="review">
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star"></i></li>
                                <li><span>4.0 Review(s)</span></li>
                            </ul>
                            <div class="price">
                                <span> <span>&#2547;</span> {{$product->selling_price}}</span>
                            </div>
                        </div>
                    </div>

                </div>
                @endforeach
            </div>
        </div>
    </section>


    <section class="banner section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="single-banner" style="background-image:url('{{asset('/')}}website/assets/images/banner/b1.jpg' );background-size:522px 307px;; background-position: 169% 81%;" >
                        <div class="content">
                            <h4 class="text-black">Medicine for Covid-19</h4>
                            <p class="text-black">Space Gray Aluminum Case with <br>Black/Volt Real Sport Band </p>
                            <div class="button">
                                <a href="product-grids.html" class="btn">View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="single-banner custom-responsive-margin"  style="background-image:url('{{asset('/')}}website/assets/images/banner/b2.jpg');background-size:522px 318px; background-position: 151% -67%;">
                        <div class="content">
                            <h4 class="text-black">Medicine for Dengue</h4>
                            <p class="text-black"> Dengue is a mosquito-borne <br>disease, which is spread by the <br>bite of Aedes mosquitoes.</p>
                            <div class="button">
                                <a href="product-grids.html" class="btn">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="special-offer section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="text-black">Special Offer</h2>
                        <p class="text-black">There are many variations of passages of Lorem Ipsum available, but the majority have
                            suffered alteration in some form.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-12 col-12">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-12">

                            <div class="single-product">
                                <div class="product-image">
                                    <img src="{{asset('/')}}website/assets/images/products/p2.jpg" alt="#" height="210" width="210">
                                    <div class="button">
                                        <a href="product-details.html" class="btn"><i class="lni lni-cart"></i> Add to
                                            Cart</a>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <span class="category">Covid-19</span>
                                    <h4 class="title">
                                        <a href="product-grids.html">COVID-19 vaccine</a>
                                    </h4>
                                    <ul class="review">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><span>5.0 Review(s)</span></li>
                                    </ul>
                                    <div class="price">
                                        <span>$399.00</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-4 col-md-4 col-12">

                            <div class="single-product">
                                <div class="product-image">
                                    <img src="{{asset('/')}}website/assets/images/products/p1.jpg" alt="#" height="210" width="210">
                                    <div class="button">
                                        <a href="product-details.html" class="btn"><i class="lni lni-cart"></i> Add to
                                            Cart</a>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <span class="category">Medicine for Dengue</span>
                                    <h4 class="title">
                                        <a href="product-grids.html">Dengue vaccine </a>
                                    </h4>
                                    <ul class="review">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><span>5.0 Review(s)</span></li>
                                    </ul>
                                    <div class="price">
                                        <span>$899.00</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-4 col-md-4 col-12">

                            <div class="single-product">
                                <div class="product-image">
                                    <img src="{{asset('/')}}website/assets/images/products/p3.jpg" alt="#" height="210" width="210">
                                    <div class="button">
                                        <a href="product-details.html" class="btn"><i class="lni lni-cart"></i> Add to
                                            Cart</a>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <span class="category">EYE medicine</span>
                                    <h4 class="title">
                                        <a href="product-grids.html">Systane Lubricant Eye Gel Drops</a>
                                    </h4>
                                    <ul class="review">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star"></i></li>
                                        <li><span>4.0 Review(s)</span></li>
                                    </ul>
                                    <div class="price">
                                        <span>$70.00</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="single-banner right" style="background-image:url('{{asset('/')}}website/assets/images/banner/b3.jpg');margin-top: 30px;margin-right: 30px;">
                        <div class="content align-left">
                            <h2 class="text-black"> Cancer Medicine </h2>
                            <h6 class="text-black">To meet the various requirements of <br>the customers
                                </h6>
                            <div class="price">
                                <span>$190.00</span>
                            </div>
                            <div class="button">
                                <a href="{{route('home')}}" class="btn">Shop Now</a>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-lg-4 col-md-12 col-12">
                    <div class="offer-content">
                        <div class="image">
                            <img src="{{asset('/')}}website/assets/images/offer/f1.jpg" alt="#" height="300px"  width="300px">
                            <span class="sale-tag">-50%</span>
                        </div>
                        <div class="text">
                            <h2><a href="product-grids.html">Anti Cancer Medicine</a></h2>
                            <ul class="review">
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><span>5.0 Review(s)</span></li>
                            </ul>
                            <div class="price">
                                <span>$200.00</span>
                                <span class="discount-price">$400.00</span>
                            </div>
                            <p>anticancer drug, also called antineoplastic drug, any drug that is effective in the treatment of malignant,
                                or cancerous, disease. There are several major classes of anticancer drugs;
                                these include alkylating agents, antimetabolites, natural products, and hormones..</p>
                        </div>
                        <div class="box-head">
                            <div class="box">
                                <h1 id="days">000</h1>
                                <h2 id="daystxt">Days</h2>
                            </div>
                            <div class="box">
                                <h1 id="hours">00</h1>
                                <h2 id="hourstxt">Hours</h2>
                            </div>
                            <div class="box">
                                <h1 id="minutes">00</h1>
                                <h2 id="minutestxt">Minutes</h2>
                            </div>
                            <div class="box">
                                <h1 id="seconds">00</h1>
                                <h2 id="secondstxt">Secondes</h2>
                            </div>
                        </div>
                        <div style="background: rgb(204, 24, 24);" class="alert">
                            <h1 style="padding: 50px 80px;color: white;">We are sorry, Event ended ! </h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="site-section bg-secondary bg-image" style="background-image: url('{{asset('/')}}website/assets/images/hero/bg_2.jpg');">
        <div class="container">
            <div class="row align-items-stretch">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('{{asset('/')}}website/assets/images/hero/bg_1.jpg');">
                        <div class="banner-1-inner align-self-center">
                            <h2>Pharma Products</h2>
                            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae ex ad minus rem odio voluptatem.
                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('{{asset('/')}}website/assets/images/hero/bg_2.jpg');">
                        <div class="banner-1-inner ml-auto  align-self-center">
                            <h2>Rated by Experts</h2>
                            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae ex ad minus rem odio voluptatem.
                            </p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

{{--    <section class="blog-section section">--}}
{{--        <div class="container">--}}
{{--            <div class="row">--}}
{{--                <div class="col-12">--}}
{{--                    <div class="section-title">--}}
{{--                        <h2>Our Latest News</h2>--}}
{{--                        <p>There are many variations of passages of Lorem--}}
{{--                            Ipsum available, but the majority have suffered alteration in some form.</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div class="row">--}}
{{--                <div class="col-lg-4 col-md-6 col-12">--}}

{{--                    <div class="single-blog">--}}
{{--                        <div class="blog-img">--}}
{{--                            <a href="blog-single-sidebar.html">--}}
{{--                                <img src="{{asset('/')}}website/assets/images/blog/blog-1.jpg" alt="#">--}}
{{--                            </a>--}}
{{--                        </div>--}}
{{--                        <div class="blog-content">--}}
{{--                            <a class="category" href="javascript:void(0)">eCommerce</a>--}}
{{--                            <h4>--}}
{{--                                <a href="blog-single-sidebar.html">What information is needed for shipping?</a>--}}
{{--                            </h4>--}}
{{--                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor--}}
{{--                                incididunt.</p>--}}
{{--                            <div class="button">--}}
{{--                                <a href="javascript:void(0)" class="btn">Read More</a>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}

{{--                </div>--}}
{{--                <div class="col-lg-4 col-md-6 col-12">--}}

{{--                    <div class="single-blog">--}}
{{--                        <div class="blog-img">--}}
{{--                            <a href="blog-single-sidebar.html">--}}
{{--                                <img src="{{asset('/')}}website/assets/images/blog/blog-2.jpg" alt="#">--}}
{{--                            </a>--}}
{{--                        </div>--}}
{{--                        <div class="blog-content">--}}
{{--                            <a class="category" href="javascript:void(0)">Gaming</a>--}}
{{--                            <h4>--}}
{{--                                <a href="blog-single-sidebar.html">Interesting fact about gaming consoles</a>--}}
{{--                            </h4>--}}
{{--                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor--}}
{{--                                incididunt.</p>--}}
{{--                            <div class="button">--}}
{{--                                <a href="javascript:void(0)" class="btn">Read More</a>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}

{{--                </div>--}}
{{--                <div class="col-lg-4 col-md-6 col-12">--}}

{{--                    <div class="single-blog">--}}
{{--                        <div class="blog-img">--}}
{{--                            <a href="blog-single-sidebar.html">--}}
{{--                                <img src="{{asset('/')}}website/assets/images/blog/blog-3.jpg" alt="#">--}}
{{--                            </a>--}}
{{--                        </div>--}}
{{--                        <div class="blog-content">--}}
{{--                            <a class="category" href="javascript:void(0)">Electronic</a>--}}
{{--                            <h4>--}}
{{--                                <a href="blog-single-sidebar.html">Electronics, instrumentation & control engineering--}}
{{--                                </a>--}}
{{--                            </h4>--}}
{{--                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor--}}
{{--                                incididunt.</p>--}}
{{--                            <div class="button">--}}
{{--                                <a href="javascript:void(0)" class="btn">Read More</a>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}

{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </section>--}}


    <section class="shipping-info">
        <div class="container">
            <ul>

                <li>
                    <div class="media-icon">
                        <i class="lni lni-delivery"></i>
                    </div>
                    <div class="media-body">
                        <h5>Free Shipping</h5>
                        <span>On order over $99</span>
                    </div>
                </li>

                <li>
                    <div class="media-icon">
                        <i class="lni lni-support"></i>
                    </div>
                    <div class="media-body">
                        <h5>24/7 Support.</h5>
                        <span>Live Chat Or Call.</span>
                    </div>
                </li>

                <li>
                    <div class="media-icon">
                        <i class="lni lni-credit-cards"></i>
                    </div>
                    <div class="media-body">
                        <h5>Online Payment.</h5>
                        <span>Secure Payment Services.</span>
                    </div>
                </li>

                <li>
                    <div class="media-icon">
                        <i class="lni lni-reload"></i>
                    </div>
                    <div class="media-body">
                        <h5>Easy Return.</h5>
                        <span>Hassle Free Shopping.</span>
                    </div>
                </li>
            </ul>
        </div>
    </section>
@endsection
