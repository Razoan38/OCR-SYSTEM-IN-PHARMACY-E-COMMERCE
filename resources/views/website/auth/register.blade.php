@extends('website.master')

@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title bg-danger text-center">Register Form</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
{{--                    <ul class="breadcrumb-nav">--}}
{{--                        <li><a href=""><i class="lni lni-home"></i> Home</a></li>--}}
{{--                        <li><a href="">Auth</a></li>--}}
{{--                        <li>Register Form</li>--}}
{{--                    </ul>--}}
                </div>
            </div>
        </div>
    </div>

    <section class="py-5 " style="background-image: url('{{asset('/')}}website/assets/images/f4.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-header">Register Form</div>
                        <div class="card-body">
                            <form action="{{route('new-customer')}}" method="POST">
                                @csrf
                                <div class="row mb-3">
                                    <label class="col-md-3">Full Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="name"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3">Email Address</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="password"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3">Mobile</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="mobile"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-success" name="btn" value="Register"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


