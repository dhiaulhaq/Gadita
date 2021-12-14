<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Models\Product;
use App\Models\Category;

class ProductApiController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return response()->json(['message' => 'Success', 'data' => $products]);
    }

    public function show($id)
    {
        $product = Product::find($id);
        return response()->json(['message' => 'Success', 'data' => $product]);
    }

    public function store(Request $request)
    {
        // $product = Product::create($request->all());
        // return response()->json(['message' => 'Data tersimpan', 'data' => $product]);

        // $code = json_decode($request->codes, TRUE);
        // dd($code);

        try {
            DB::beginTransaction();

            $category = Category::where('id', $request->category_id)->first();
            $categoryId = $category->code;
            $product_code = $categoryId . '-' . time();

            $product = Product::create([
                'name' => $request->name,
                'category_id' => $request->category_id,
                'product_code' => $product_code,
                'description' => $request->description,
                'qty_master' => $request->price,
                'image_url' => $request->image_url,
            ]);

            // dd($product);

            DB::commit();

            return response()->json(['message' => 'Data tersimpan', 'data' => $product]);
        } catch (\Exception $exception) {
            DB::rollBack();
            return response()->json()->withErrors($exception);
        }
    }

    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        $product->update($request->all());
        return response()->json(['message' => 'Data diperbarui', 'data' => $product]);
    }

    public function destroy($id)
    {
        $product = Product::find($id);
        $product->delete();
        return response()->json(['message' => 'Data dihapus', 'data' => null]);
    }

    public function lending($id)
    {
        $product = Product::find($id);
        return response()->json(['message' => 'Success', 'data' => $product]);
    }
}
