@extends('admin.master')

@section('title')
    Edit Order
@endsection

@section('body')

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Edit Order Info</h4>
                    <h4 class="text-center text-success">{{Session::get('message')}}</h4>
                    <form action="{{route('admin-order.update', ['id' => $order->id])}}" method="POST">
                        @csrf
                        <div class="form-group row mb-4">
                            <label class="col-sm-3 col-form-label">Order No</label>
                            <div class="col-sm-9">
                                <input type="text" readonly value="{{$order->id}}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label class="col-sm-3 col-form-label">Order Date</label>
                            <div class="col-sm-9">
                                <input type="text" readonly value="{{$order->order_date}}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label class="col-sm-3 col-form-label">Total Payable</label>
                            <div class="col-sm-9">
                                <input type="text" readonly value="{{number_format($order->order_total)}}" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label class="col-sm-3 col-form-label">Order Status</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="order_status">
                                    <option value="Pending">Pending</option>
                                    <option value="Processing">Processing</option>
                                    <option value="Cancel">Cancel</option>
                                    <option value="Complete">Complete</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label class="col-sm-3 col-form-label">Payment Status</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="payment_status">
                                    <option value="Pending">Pending</option>
                                    <option value="Processing">Processing</option>
                                    <option value="Cancel">Cancel</option>
                                    <option value="Complete">Complete</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label class="col-sm-3 col-form-label">Delivery Status</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="delivery_status">
                                    <option value="Pending">Pending</option>
                                    <option value="Processing">Processing</option>
                                    <option value="Cancel">Cancel</option>
                                    <option value="Complete">Complete</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Delivery Address</label>
                            <div class="col-sm-9">
                                <textarea class="form-control" name="delivery_address" id="horizontal-email-input">{{$order->delivery_address}}</textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-9">
                                <input type="submit" class="btn btn-success px-5" value="Update Order Status"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
