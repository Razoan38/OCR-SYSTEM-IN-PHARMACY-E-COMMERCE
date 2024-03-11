@extends('website.master')

@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Pharma</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="{{ route('home') }}"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="{{ route('home') }}">Pharma</a></li>
                    
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="product-grids section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12">

                    <div class="product-sidebar">



                        <div class="single-widget">
                            <h3>All Categories</h3>
                            <ul class="list">
                                @foreach($categories as $category)
                               <li>
                                <a href="{{route('category', ['id' => $category->id])}}"> {{$category->name}}
                                    @if(count($category->subCategories))
                              
                                    @endif
                                </a>
                                {{-- @if(count($category->subCategories) > 0)
                                <ul class="inner-sub-category">
                                    @foreach($category->subCategories as $subCategory)
                                    <li><a href="{{route('category', ['id' => $category->id])}}">{{$subCategory->name}}</a></li>
                                    @endforeach
                                </ul>
                                @endif --}}
                            </li>
                            @endforeach
                            </ul>
                        </div> 


                        <div class="single-widget range">
                            <h3>Price Range</h3>
                            <input type="range" class="form-range" name="range" step="1" min="100" max="10000" value="10" oninput="updateRangeValue(this.value)">
                            <div class="range-inner">
                                <label>$</label>
                                <input type="text" id="rangePrimary" placeholder="100" />
                            </div>
                        </div>
                        
                        <div class="single-widget">
                            <h3>All Brand</h3>
                            <ul class="list">
                                @foreach($brands as $brand)
                              <li>
                                <a href=""> {{$brand->name}}
                                   
                                </a>
                               
                                </li>
                            @endforeach
                            </ul>
                        </div> 

                    </div>

                </div>
                <div class="col-lg-9 col-12">
                    <div class="product-grids-head">
                        <div class="product-grid-topbar">
                            <div class="row align-items-center">
                                <div class="col-lg-7 col-md-8 col-12">
                                    <h1 style="text-align: center; color: #0167f3;">All Product </h1>
                                </div>
                                <div class="col-lg-5 col-md-4 col-12">
                                    <nav>
                                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                            <button class="nav-link active" id="nav-grid-tab" data-bs-toggle="tab" data-bs-target="#nav-grid" type="button" role="tab" aria-controls="nav-grid" aria-selected="true"><i class="lni lni-grid-alt"></i></button>
                                            <button class="nav-link" id="nav-list-tab" data-bs-toggle="tab" data-bs-target="#nav-list" type="button" role="tab" aria-controls="nav-list" aria-selected="false"><i class="lni lni-list"></i></button>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-grid" role="tabpanel" aria-labelledby="nav-grid-tab">
                                <div class="row">
                                    @foreach($products as $product)
                                    <div class="col-lg-4 col-md-6 col-12">

                                        <div class="single-product">
                                            <div class="product-image">
                                                <img src="{{asset($product->image)}}" alt="#">
                                                <form action="{{route('add-to-cart', ['id' =>$product->id])}}" method="POST">
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
                                                    <span>TK. {{$product->selling_price}}</span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    @endforeach
                                </div>
                                <div class="row">
                                    <div class="col-12">

                                        <div class="pagination left">
                                            <ul class="pagination-list">
                                                <li><a href="javascript:void(0)">1</a></li>
                                                <li class="active"><a href="javascript:void(0)">2</a></li>
                                                <li><a href="javascript:void(0)">3</a></li>
                                                <li><a href="javascript:void(0)">4</a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-chevron-right"></i></a></li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            
                            <div class="tab-pane fade" id="nav-list" role="tabpanel" aria-labelledby="nav-list-tab">
                                <div class="row">
                                    @foreach($products as $product)  
                                    <div class="col-lg-12 col-md-12 col-12">

                                        <div class="single-product">
                                            <div class="row align-items-center">
                                                <div class="col-lg-4 col-md-4 col-12">
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
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-12">
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
                                                            <span>TK. {{$product->selling_price}}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                                <div class="row">
                                    <div class="col-12">

                                        <div class="pagination left">
                                            <ul class="pagination-list">
                                                <li><a href="javascript:void(0)">1</a></li>
                                                <li class="active"><a href="javascript:void(0)">2</a></li>
                                                <li><a href="javascript:void(0)">3</a></li>
                                                <li><a href="javascript:void(0)">4</a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-chevron-right"></i></a></li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
