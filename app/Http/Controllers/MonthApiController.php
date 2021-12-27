<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\StockOpname;

class MonthApiController extends Controller
{

    public function show($year_id, $month_id)
    {
        $month = StockOpname::where('id_year', $year_id)->where('id_month', $month_id)->get();
        return response()->json(['message' => 'Success', 'data' => $month]);
    }
}
