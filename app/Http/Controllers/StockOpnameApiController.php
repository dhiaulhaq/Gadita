<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use App\Models\Category;
use App\Models\Lending;
use App\Models\Period;
use App\Models\StockOpname;

class StockOpnameApiController extends Controller
{
    public function indexYear()
    {
        $year = Period::all();
        return response()->json(['message' => 'Success', 'data' => $year]);
    }

    public function storeYear(Request $request)
    {
        $year = Period::create([
            'year' => $request->year
        ]);
        return response()->json(['message' => 'Data tersimpan', 'data' => $year]);
    }

    public function showYear($id)
    {
        $year = StockOpname::where('id_year', $id)->get();
        return response()->json(['message' => 'Success', 'data' => $year]);
    }

    public function month()
    {
        $month = StockOpname::all();
        return response()->json(['message' => 'Success', 'data' => $month]);
    }

    public function index()
    {
        // $myString = ['RM-1638953151', 'KLS-1638956223'];

        // $code = Product::select("*")
        //     ->whereIn('product_code', $myString)
        //     ->get();

        // dd($myString);

        $stock_opname = StockOpname::all();
        return response()->json(['message' => 'Success', 'data' => $stock_opname]);
    }

    public function store(Request $request)
    {
        // $assetArray = ['RM-1638953151', 'KLS-1638956223'];
        $assetArray = $request->arrayData;
        $assetId = array(Product::whereIn('product_code', $assetArray)->get('id'));
        $yearId = array('2021');
        $assetName = array(Product::whereIn('product_code', $assetArray)->get('name'));
        $qtyAssetMaster = array(Product::whereIn('product_code', $assetArray)->get('qty_master'));
        $qtyAssetLending = array(Product::whereIn('product_code', $assetArray)->get('qty_lending'));
        $totalLending = array(Lending::whereIn('product_code', $assetArray)->count());
        // $precentage = array(Lending::whereIn('product_code', $assetArray)
        //     ->count()->selectRaw('qty_master - qty_lending'));
        dd($qtyAssetLending);

        foreach ($assetArray as $key => $asset) {
            $input['id_asset'] = $assetId[$key];
            $input['id_year'] = $yearId[$key];
            $input['asset_name'] = $assetName[$key];
            $input['asset_code'] = $asset;
            $input['qty_asset_master'] = $qtyAssetMaster[$key];
            $input['qty_asset_lending'] = $qtyAssetLending[$key];
            $input['total_lending'] = $totalLending[$key];

            // dd($input);

            StockOpname::create($input);
        }

        return response()->json(['message' => 'Data tersimpan', 'data' => $input]);
    }
}
