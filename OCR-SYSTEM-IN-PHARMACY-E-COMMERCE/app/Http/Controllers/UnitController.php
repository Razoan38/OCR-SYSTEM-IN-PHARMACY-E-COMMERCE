<?php

namespace App\Http\Controllers;

use App\Models\Unit;
use Illuminate\Http\Request;

class UnitController extends Controller
{
    private $units;
    private $unit;

    public function index()
    {
        return view('admin.unit.index');
    }

    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required'
        ]);
        Unit::newUnit($request);
        return redirect()->back()->with('message', 'Unit info create successfully.');
    }

    public function manage()
    {
        $this->units = Unit::all();
        return view('admin.unit.manage', ['units' => $this->units]);
    }

    public function edit($id)
    {
        $this->unit = Unit::find($id);
        return view('admin.unit.edit', ['unit' => $this->unit]);
    }

    public function update(Request $request, $id)
    {
        Unit::updateUnit($request, $id);
        return redirect('/manage-unit')->with('message', 'Unit info update successfully.');
    }

    public function delete($id)
    {
        Unit::deleteUnit($id);
        return redirect('/manage-unit')->with('message', 'Unit info delete successfully.');
    }
}
