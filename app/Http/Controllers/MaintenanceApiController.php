<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Maintenance;

class MaintenanceApiController extends Controller
{
    public function index()
    {
        $maintenances = Maintenance::all();
        return response()->json(['message' => 'Success', 'data' => $maintenances]);
    }

    public function show($id)
    {
        $maintenance = Maintenance::find($id);
        return response()->json(['message' => 'Success', 'data' => $maintenance]);
    }

    public function store(Request $request)
    {
        $maintenance = Maintenance::create($request->all());
        return response()->json(['message' => 'Data tersimpan', 'data' => $maintenance]);
    }

    public function update(Request $request, $id)
    {
        $maintenance = Maintenance::find($id);
        $maintenance->update($request->all());
        return response()->json(['message' => 'Data diperbarui', 'data' => $maintenance]);
    }

    public function destroy($id)
    {
        $maintenance = Maintenance::find($id);
        $maintenance->delete();
        return response()->json(['message' => 'Data dihapus', 'data' => null]);
    }
}
