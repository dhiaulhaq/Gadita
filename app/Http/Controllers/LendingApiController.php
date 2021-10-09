<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Lending;

class LendingApiController extends Controller
{
    public function index()
    {
        $lendings = Lending::all();
        return response()->json(['message' => 'Success', 'data' => $lendings]);
    }

    public function show($id)
    {
        $lending = Lending::find($id);
        return response()->json(['message' => 'Success', 'data' => $lending]);
    }

    public function store(Request $request)
    {
        $lending = Lending::create($request->all());
        return response()->json(['message' => 'Data tersimpan', 'data' => $lending]);
    }

    public function update(Request $request, $id)
    {
        $lending = Lending::find($id);
        $lending->update($request->all());
        return response()->json(['message' => 'Data diperbarui', 'data' => $lending]);
    }

    public function destroy($id)
    {
        $lending = Lending::find($id);
        $lending->delete();
        return response()->json(['message' => 'Data dihapus', 'data' => null]);
    }
}
