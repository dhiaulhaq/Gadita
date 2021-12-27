<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Lending;
use App\Models\Product;

class LendingApiController extends Controller
{
    public function index()
    {
        $lendings = Lending::where('status', 'Dipinjam')->orderBy('created_at', 'desc')->get();
        return response()->json(['message' => 'Success', 'data' => $lendings]);
    }

    public function show($id)
    {
        $lending = Lending::find($id);
        return response()->json(['message' => 'Success', 'data' => $lending]);
    }

    public function store(Request $request, $id)
    {

        $asset_id = Product::where('id', $id)->first();
        $product_code = $asset_id->product_code;
        $product_img = $asset_id->image_url;
        $qty = $request->qty;
        $year = date("Y");
        $month = date("M");
        // $lending_qty = Product::where('id', $id)->update(array(
        //     'qty_lending' => DB::raw('qty_lending + 100')
        // ));
        // dd($lending_qty);


        $lending = Lending::create([
            'borrower' => $request->borrower,
            'asset_id' => $id,
            'product_code' => $product_code,
            'qty' => $qty,
            'description' => $request->description,
            'date' => $request->date,
            'time_start' => $request->time_start,
            'time_end' => $request->time_end,
            'phone' => $request->phone,
            'status' => 'Dipinjam',
            'year' => $year,
            'month' => $month,
            'image' => $product_img,
        ]);

        // $asset = Product::update([
        //     'qty_lending' => $lending_qty
        // ]);

        // dd($lending);

        return response()->json(['message' => 'Data tersimpan', 'data' => $lending]);
    }

    public function update(Request $request, $id)
    {
        $lending = Lending::find($id);
        // $lending->update($request->all());
        $lending->update([
            'status' => 'Tersedia'
        ]);
        return response()->json(['message' => 'Data diperbarui', 'data' => $lending]);
    }

    public function destroy($id)
    {
        $lending = Lending::find($id);
        $lending->delete();
        return response()->json(['message' => 'Data dihapus', 'data' => null]);
    }
}
