<?php

namespace App\Http\Controllers;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use Illuminate\Http\Request;
use PDF;

class AdminOrderController extends Controller
{
    private $product;
    private $order;
    private $orderDetails;
    private $orders;

    public function index()
    {
        $this->orders = Order::orderBy('id', 'desc')->get();
        return view('admin.order.manage', ['orders' => $this->orders]);
    }

    public function detail($id)
    {
        $this->order = Order::find($id);
        return view('admin.order.detail', ['order' => $this->order]);
    }

    public function viewInvoice($id)
    {
        $this->order = Order::find($id);
        return view('admin.order.invoice', ['order' => $this->order]);
    }

    public function downloadInvoice($id)
    {
        $pdf = PDF::loadView('admin.order.download-invoice', ['order' => Order::find($id)]);
        return $pdf->stream();
//        return $pdf->download();

//        $pdf = PDF::loadHTML('<h1>Test</h1>');
//        return $pdf->download();
    }

    public function edit($id)
    {
        return view('admin.order.edit', ['order' => Order::find($id)]);
    }

    public function update(Request $request, $id)
    {

        $this->order = Order::find($id);
        if ($request->order_status == "Processing")
        {
            $this->order->order_status      = 'Processing';
            $this->order->payment_status    = 'Processing';
            $this->order->delivery_status   = 'Processing';
            $this->order->delivery_address  = $request->delivery_address;
            $this->order->save();
        }
        elseif($request->order_status == "Complete")
        {
            $this->order->order_status      = 'Complete';
            $this->order->payment_status    = 'Complete';
            $this->order->payment_amount    = $this->order->order_total;
            $this->order->payment_date      = date('Y-m-d');
            $this->order->payment_timestamp = strtotime(date('Y-m-d'));
            $this->order->delivery_status   = 'Complete';
            $this->order->delivery_date     = date('Y-m-d');
            $this->order->delivery_timestamp= strtotime(date('Y-m-d'));
            $this->order->save();

            $this->orderDetails = OrderDetail::where('order_id', $this->order->id)->get();
            foreach ($this->orderDetails as $orderDetail)
            {
                $this->product = Product::find($orderDetail->product_id);
                $this->product->stock_amount = $this->product->stock_amount - $orderDetail->product_qty;
                $this->product->save();
            }
        }
        elseif($request->order_status == "Cancel")
        {
            $this->order->order_status      = 'Cancel';
            $this->order->payment_status    = 'Cancel';
            $this->order->delivery_status   = 'Cancel';
            $this->order->save();
        }

        return redirect('/admin-manage-order')->with('message', 'Order Status info update successfully.');
    }

    public function delete($id)
    {
        $this->order = Order::find($id);
        $this->order->delete();

        $this->orderDetails = OrderDetail::where('order_id', $id)->get();
        foreach ($this->orderDetails as $orderDetail)
        {
            $orderDetail->delete();
        }
        return redirect('/admin-manage-order')->with('message', 'Order Status info delete successfully.');
    }
}
