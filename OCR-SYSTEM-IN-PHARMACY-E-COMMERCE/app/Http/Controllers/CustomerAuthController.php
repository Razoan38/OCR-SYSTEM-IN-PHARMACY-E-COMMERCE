<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use Session;

class CustomerAuthController extends Controller
{
    private $customer;

    public function login()
    {
        return view('website.auth.login');
    }

    public function register()
    {
        return view('website.auth.register');
    }

    public function newCustomer(Request $request)
    {
        $this->customer = Customer::newCustomerRegister($request);

        Session::put('customer_id', $this->customer->id);
        Session::put('customer_name', $this->customer->name);

        return redirect('/customer-dashboard');
    }


    public function signIn(Request $request)
    {
        $this->customer = Customer::where('email', $request->email)->first();
        if ($this->customer)
        {
            if (password_verify($request->password, $this->customer->password))
            {
                Session::put('customer_id', $this->customer->id);
                Session::put('customer_name', $this->customer->name);

                return redirect('/customer-dashboard');
            }
            else
            {
                return redirect()->back()->with('message', 'Sorry.. your password is wrong.');
            }
        }
        else
        {
            return redirect()->back()->with('message', 'Sorry.. your email address is invalid.');
        }
    }

    public function logout()
    {
        Session::forget('customer_id');
        Session::forget('customer_name');

        return redirect('/');
    }
}
