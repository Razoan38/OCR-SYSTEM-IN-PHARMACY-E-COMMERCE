@extends('admin.master')

@section('title')
    Manage Product
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">All Product Info</h4>
                    <h4 class="text-center text-success">{{Session::get('message')}}</h4>
                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>SL NO</th>
                            <th>Category Name</th>
                            <th>Sub Category Name</th>
                            <th>Brand Name</th>
                            <th>Product Name</th>
                            <th>Selling Price</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($products as $product)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{ optional($product->category)->name}}</td>
                                <td>{{ optional($product->subCategory)->name}}</td>
                                <td>{{$product->brand->name}}</td>
                                <td>{{$product->name}}</td>
                                <td>{{$product->selling_price}}</td>
                                <td>{{$product->status == 1 ? 'Published' : 'Unpublished' }}</td>
                                <td>
                                    <a href="{{route('product.detail', ['id' => $product->id])}}" class="btn btn-primary btn-sm" title="View Product Detail">
                                        <i class="fa fa-book-open"></i>
                                    </a>
                                    <a href="{{route('product.edit', ['id' => $product->id])}}" class="btn btn-success btn-sm" title="Edit Product">
                                        <i class="fa fa-edit"></i>
                                    </a>
                                    <a href="{{route('product.delete', ['id' => $product->id])}}" class="btn btn-danger btn-sm" onclick="return confirm('are you sure to delete this..');" title="Delete Product">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection
