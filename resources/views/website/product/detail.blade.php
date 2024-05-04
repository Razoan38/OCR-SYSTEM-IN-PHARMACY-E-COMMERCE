@extends('website.master')

@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Single Product</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="index.html">Shop</a></li>
                        <li>Single Product</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <section class="item-details section ">
        <div class="container">
            <div class="top-area">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-12 col-12">
                        @if(count($product->subImages) > 0)
                        <div class="xzoom-container">
                            <img class="xzoom" id="xzoom-default" src="{{asset($product->subImages[0]->image)}}" xoriginal="{{asset($product->subImages[0]->image)}}" />
                            <div class="xzoom-thumbs">
                                @foreach($product->subImages as $key => $subImage)
                                <a href="{{asset($subImage->image)}}">
                                    <img class="xzoom-gallery" width="80" src="{{asset($subImage->image)}}"  @if($key == 0) xpreview="{{asset($subImage->image)}}" @endif title="The description goes here"></a>
                                @endforeach
                            </div>
                        </div>
                        @else
                            <div class="xzoom-container">
                                <img class="xzoom" id="xzoom-default" src="{{asset($product->image)}}" xoriginal="{{asset($product->image)}}" />
                                <div class="xzoom-thumbs">
                                        <a href="{{asset($product->image)}}">
                                            <img class="xzoom-gallery" width="80" src="{{asset($product->image)}}"  xpreview="{{asset($product->image)}}" title="The description goes here">
                                        </a>
                                </div>
                            </div>
                        @endif
                    </div>
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="product-info">
                            <h2 class="title">{{$product->name}}</h2>
                            <p class="category">
                                <i class="lni lni-tag"></i> Product Category:
                                <a href="javascript:void(0)">{{$product->category->name}}</a>
                            </p>
                            <p class="category">
                                <i class="lni lni-tag"></i> Product Brand:
                                <a href="javascript:void(0)">{{$product->brand->name}}</a>
                            </p>
                            <h3 class="price">TK. {{$product->selling_price}}<span>TK. {{$product->regular_price}}</span></h3>
                            <p class="info-text">{{$product->short_description}}</p>
                            <form action="{{route('add-to-cart', ['id' => $product])}}" method="POST">
                                @csrf
                                <div class="row">
                                    {{-- <div class="col-lg-4 col-md-4 col-12">
                                        <div class="form-group color-option">
                                            <label class="title-label" for="size">Choose color</label>
                                            <div class="single-checkbox checkbox-style-1">
                                                <input type="checkbox" id="checkbox-1" checked>
                                                <label for="checkbox-1"><span></span></label>
                                            </div>
                                            <div class="single-checkbox checkbox-style-2">
                                                <input type="checkbox" id="checkbox-2">
                                                <label for="checkbox-2"><span></span></label>
                                            </div>
                                            <div class="single-checkbox checkbox-style-3">
                                                <input type="checkbox" id="checkbox-3">
                                                <label for="checkbox-3"><span></span></label>
                                            </div>
                                            <div class="single-checkbox checkbox-style-4">
                                                <input type="checkbox" id="checkbox-4">
                                                <label for="checkbox-4"><span></span></label>
                                            </div>
                                        </div>
                                    </div> --}}
                                    <div class="col-lg-8 col-md-8 col-12">
                                        <div class="form-group quantity">
                                            <label for="color">Quantity</label>
                                            <input type="number" name="qty" class="form-control" value="1" min="1"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="bottom-content">
                                <div class="row align-items-end">
                                    <div class="col-lg-4 col-md-4 col-12">
                                        <div class="button cart-button">
                                            <button type="submit" class="btn" style="width: 100%;">Add to Cart</button>
                                        </div>
                                    </div>
                                    {{-- <div class="col-lg-4 col-md-4 col-12">
                                        <div class="wish-button">
                                            <button class="btn"><i class="lni lni-reload"></i> Compare</button>
                                        </div>
                                    </div> --}}
                                    
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-details-info">
                <div class="single-block">
                    <div class="row">
                        <div class="col-12">
                            <div class="info-body custom-responsive-margin">
                                <h4>Product Details</h4>
                                {!! $product->long_description !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

