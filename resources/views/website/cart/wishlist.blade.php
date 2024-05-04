@extends('website.master')

@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">wishlist</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="{{ route('home') }}"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="{{ route('home') }}">Pharma</a></li>
                        <li>wishlist</li>
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
               
            </div>
            {{-- <div class="row">
                <div class="col-12">
                  <div class="">
                    @if ($wishlist->count()>0)
                       @else  
                       <h4>There are no product in your wishlist</h4>
                    @endif
                  </div>
                </div>
            </div> --}}
        </div>
    </div>

    
@endsection


@section('script')

<script>
       $('.addToWishlist').click(function (e){
        e.preventDefault();
        var product_id = $(this).closest('.product_data').find('.prod_id').val();
        $.ajax({
            method: "POST" ,
            url: "/add-to-wishlist",
            data: {
                'product_id' : product_id,
            },
            success: function(response){
                swal(response.status);
            }

        });
       });
</script>


@endsection 