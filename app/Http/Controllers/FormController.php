<?php

namespace App\Http\Controllers;

use App\Models\Form;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;
use Illuminate\Support\Facades\Validator;

class FormController extends BaseController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $forms = Form::orderBy('nama_pasien', 'desc')->get();;
        return response()->json([
            'status' => 'success',
            'message' => 'Data Ditemukan',
            'Data' => $forms,
        ], 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $dataSample = new Form;

        $rules = [
            'nama_pasien' => 'required',
            'nomor_rekam_medis' => 'required',
            'tanggal_lahir' => 'required',
            'jenis_kelamin' => 'required',
            'alamat' => 'required',
            'nomor_telepon' => 'required',
        ];

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => 'Gagal Menambahkan Data Sampel',
                'errors' => $validator->errors(),
            ], 400);
        }

        $dataSample->nama_pasien = $request->nama_pasien;
        $dataSample->nomor_rekam_medis = $request->nomor_rekam_medis;
        $dataSample->tanggal_lahir = $request->tanggal_lahir;
        $dataSample->jenis_kelamin = $request->jenis_kelamin;
        $dataSample->alamat = $request->alamat;
        $dataSample->nomor_telepon = $request->nomor_telepon;

        $post = $dataSample->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Data Berhasil Ditambahkan',
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $data = Form::find($id);
        if (!$data) {
            return response()->json([
                'status' => 'error',
                'message' => 'Data Tidak Ditemukan',
            ], 404);
        }
        return response()->json([
            'status' => 'success',
            'message' => 'Data Ditemukan',
            'data' => $data,
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $sataSample = Form::find($id);
        if (empty($sataSample)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Data Sampel Tidak Ditemukan',
            ], 404);
        }

        $rules = [
            'nama_pasien' => 'required',
            'nomor_rekam_medis' => 'required',
            'tanggal_lahir' => 'required',
            'jenis_kelamin' => 'required',
            'alamat' => 'required',
            'nomor_telepon' => 'required',
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => 'Gagal melakukan update data sampel',
                'errors' => $validator->errors(),
            ], 400);
        }

        $sataSample->nama_pasien = $request->nama_pasien;
        $sataSample->nomor_rekam_medis = $request->nomor_rekam_medis;
        $sataSample->tanggal_lahir = $request->tanggal_lahir;
        $sataSample->jenis_kelamin = $request->jenis_kelamin;
        $sataSample->alamat = $request->alamat;
        $sataSample->nomor_telepon = $request->nomor_telepon;

        $post = $sataSample->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Sukses melakukan update data',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $dataSample = Form::find($id);
        if (empty($dataSample)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Data Sampel Tidak Ditemukan',
            ], 404);
        }

        $post = $dataSample->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Sukses melakukan delete data',
        ]);
    }
}
