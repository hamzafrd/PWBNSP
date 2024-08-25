<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Regions;
use App\Models\RegMahasiswa;
use App\Models\User;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;

class GeneratePdfController extends Controller
{
    public function generatePdf($id)
    {
        $data = RegMahasiswa::where('id', $id)->first();
        $pdf = Pdf::loadView('pdf.bukti-pendaftaran', compact('data'));
        return $pdf->download('bukti-pendaftaran-' . $data->id . '-' . $data->nama_lengkap . '.pdf');
    }
}
