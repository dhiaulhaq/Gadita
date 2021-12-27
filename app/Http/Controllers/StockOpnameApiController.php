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
    public function index()
    {
        $periods = Period::all();
        return response()->json(['message' => 'Success', 'data' => $periods]);
    }

    public function show($year, $month)
    {
        $asset = StockOpname::where([['year', $year], ['month', $month]])->get();
        return response()->json(['message' => 'Success', 'data' => $asset]);
    }

    public function store(Request $request)
    {
        $assetArray = ['RM-1638953151', 'KLS-1638956223'];
        // $assetArray = $request->assetCode;
        $assetId = Product::whereIn('product_code', $assetArray)->get('id');
        $year = date("Y");
        $month = date("M");
        $assetName = Product::whereIn('product_code', $assetArray)->get('name');
        $qtyAssetMaster = Product::whereIn('product_code', $assetArray)->get('qty_master');
        // $qtyAssetLending = Product::whereIn('product_code', $assetArray)->get('qty_lending');
        $totalLending = Lending::select('product_code', DB::raw('count(*) as total'))->groupBy('product_code')->get();
        // $countTtotal = $totalLending->count();
        // return response()->json($totalLending);

        // if (empty($totalLending)) {
        //     $precentage = 0;
        // } else {
        //     $precentage =  / 30 * 100;
        // }
        // dd($countTtotal);

        foreach ($assetArray as $key => $asset) {
            $input['id_asset'] = $assetId[$key]['id'];
            $input['id_period'] = $request->id_period;
            $input['year'] = $year;
            $input['month'] = $month;
            $input['asset_name'] = $assetName[$key]['name'];
            $input['asset_code'] = $asset;
            $input['qty_asset_master'] = $qtyAssetMaster[$key]['qty_master'];
            // $input['qty_asset_lending'] = $qtyAssetLending[$key]['qty_lending'];
            $input['total_lending'] = $totalLending[$key]['total'];
            $input['percentage'] = empty($totalLending) ? 0 : $totalLending[$key]['total'] / 30 * 100;
            // dd($input);
            StockOpname::create($input);

            // dd($input);
        }

        return response()->json(['message' => 'Data tersimpan', 'data' => $input]);
    }

    public function destroy($id)
    {
        $period = Period::find($id);
        $period->delete();
        return response()->json(['message' => 'Data dihapus', 'data' => null]);
    }
}
