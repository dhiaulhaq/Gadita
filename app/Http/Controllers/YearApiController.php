<?php

namespace App\Http\Controllers;

use App\Models\Lending;
use Illuminate\Http\Request;
use App\Models\Period;
use App\Models\Product;
use App\Models\StockOpname;
use Illuminate\Support\Facades\DB;

class YearApiController extends Controller
{
    public function index()
    {
        $year = Period::orderBy('created_at', 'desc')->get();
        return response()->json(['message' => 'Success', 'data' => $year]);
    }

    public function store(Request $request)
    {
        $year = $request->year;
        $month = $request->month;
        $day = $request->day;
        $date = $request->period;

        // dd($day);

        $period = Period::create([
            'user' => null,
            'period' => $date,
            'year' => $year,
            'month' => $month,
            'day' => $day,
        ]);

        return response()->json(['message' => 'Data tersimpan', 'period' => $period]);
    }

    public function show($id_period)
    {
        $result = StockOpname::where('id_period', $id_period)->get();
        return response()->json(['message' => 'Success', 'data' => $result]);
    }

    public function detail($id)
    {
        $getId = Period::find($id);
        $opname = StockOpname::where('id_period', $getId->id)->get();
        // dd($opname);
        return response()->json(['message' => 'Success', 'data' => $opname, 'datePeriod' => $getId]);
    }

    public function destroy($id)
    {
        $result = Period::find($id);
        $result->delete();
        return response()->json(['message' => 'Data dihapus', 'data' => null]);
    }

    public function sendQty(Request $request, $code)
    {
        // $data = $request->data_asset;

        // // $data = [
        // //     '1' => '190',
        // //     '2' => '233',
        // // ];

        // foreach ($data as $key => $value) {
        //     Product::where('id', $key)->update([
        //         'qty_master' => $value
        //     ]);
        //     // dd($value);
        // }

        // // dd($data);
        // return response()->json(['message' => 'Data diperbarui', 'data' => $data]);

        $qty = Product::where('product_code', $code)->update([
            'qty_master' => $request->asset_qty,
        ]);

        // dd($qty);

        return response()->json(['message' => 'Data diperbarui', 'data' => $qty]);
    }

    public function getLendingCount($y)
    {
        $monthLending = Period::where('year', $y)->get();
        // dd($monthLending);
        return response()->json(['message' => 'Success', 'data' => $monthLending]);
    }

    public function sendLendingCount($id)
    {
        $monthLending = Period::where('id', $id)->first();
        $monthCount = Lending::where([['year', $monthLending->year], ['month', $monthLending->month]])->count();

        $monthPrecentage = $monthCount / 365 * 100;

        $monthResult = Period::where('id', $id)->update([
            'precentage' => $monthPrecentage,
        ]);
        // dd($monthResult);
        return response()->json(['message' => 'Data diperbarui', 'data' => $monthResult]);
    }

    public function year()
    {
        $year = DB::table('year')->get();
        return response()->json(['message' => 'Success', 'data' => $year]);
    }
}
