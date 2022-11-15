<?php

namespace App\Http\Controllers;

use App\Mail\OrderConfirmationMail;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use App\Http\Controllers\SslCommerzPaymentController;
use Session;
use Cart;
use Mail;

class CheckoutController extends Controller
{
    private $customer;
    private $order;
    private $orderDetail;
    private $cartProducts;
    private $mailBody;

    public function index()
    {
      if (Session::get('customer_id'))
      {
          $this->customer = Customer::find(Session::get('customer_id'));
      }
      else
      {
          $this->customer = '';
      }
      return view('website.checkout.index', ['customer' => $this->customer]);
    }

    public function newOrder(Request $request)
    {
        if (Session::get('customer_id'))
        {
            $this->customer = Customer::find(Session::get('customer_id'));
        }
        else
        {
            $request->validate([
                'name'               => 'required',
                'email'              => 'required|unique:customers',
                'mobile'             => 'required',
                'delivery_address'   => 'required',
            ]);
            $this->customer = Customer::newCustomer($request);

            Session::put('customer_id', $this->customer->id);
            Session::put('customer_name', $this->customer->name);
        }

        if ($request->payment_method == 1)
        {
            $this->order    = Order::newOrder($this->customer, $request);
            OrderDetail::newOrderDetail($this->order);

            $this->cartProducts = Cart::getContent();
            foreach ($this->cartProducts as $cartProduct)
            {
                Cart::remove($cartProduct->id);
            }

            /*=================mail send code===========*/
            $this->mailBody = [
                'title' => 'This is mail title',
                'body'  => 'This is mail body',
            ];

            Mail::to($this->customer->email)->send(new OrderConfirmationMail($this->mailBody));

            /*=================mail send code===========*/

            return redirect('/complete-order')->with('message', 'Your order successfully post. Please wait, we will contact with you soon.');
        }
        elseif ($request->payment_method == 2)
        {
            $sslPayment = new SslCommerzPaymentController();
            $sslPayment->onlinePayment($request, $this->customer);
        }
    }

    public function completeOrder()
    {
        return view('website.checkout.complete-order');
    }
}
