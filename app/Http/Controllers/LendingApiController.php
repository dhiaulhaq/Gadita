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
        $lendings = Lending::where('status', 'Dipinjam')->get();
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
        // dd($asset_id);
        $product_code = $asset_id->product_code;
        $product_img = $asset_id->image_url;
        // dd($product_img);

        $lending = Lending::create([
            'borrower' => $request->borrower,
            'asset_id' => $id,
            'product_code' => $product_code,
            'description' => $request->description,
            'time_start' => $request->time_start,
            'time_end' => $request->time_end,
            'phone' => $request->phone,
            'status' => 'Dipinjam',
            'image' => $product_img,
        ]);

        // dd($lending);

        return response()->json(['message' => 'Data tersimpan', 'data' => $lending]);
    }

    public function update(Request $request, $id)
    {
        $lending = Lending::find($id);
        // $lending->update($request->all());
        $lending->update([
            'status' => 'Selesai'
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
