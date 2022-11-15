@extends('admin.master')

@section('title')
    Manage Sub Category
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">All Sub Category Info</h4>
                    <h4 class="text-center text-success">{{Session::get('message')}}</h4>
                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>SL NO</th>
                            <th>Category Name</th>
                            <th>Sub Category Name</th>
                            <th>Sub Category Image</th>
                            <th>Sub Category Description</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($subCategories as $subCategory)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$subCategory->category->name}}</td>
                                <td>{{$subCategory->name}}</td>
                                <td><img src="{{asset($subCategory->image)}}" alt="" height="50" width="80"/></td>
                                <td>{{$subCategory->description}}</td>
                                <td>{{$subCategory->status == 1 ? 'Published' : 'Unpublished' }}</td>
                                <td>
                                    <a href="{{route('category.edit', ['id' => $subCategory->id])}}" class="btn btn-success btn-sm">
                                        <i class="fa fa-edit"></i>
                                    </a>
                                    <a href="{{route('category.delete', ['id' => $subCategory->id])}}" class="btn btn-danger btn-sm" onclick="return confirm('are you sure to delete this..');">
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
