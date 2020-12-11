<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Presensi;
use App\Exports\PresensiExport;
use Maatwebsite\Excel\Facades\Excel;
use \Barryvdh\DomPDF\Facade as PDF; 

class PresensiController extends Controller
{ 

    // EXPORT EXCEL PRESENSI MENGGUNAKAN LIBRARY MAATWEBSITE
    public function exportXls()
    {
        return Excel::download(new PresensiExport, 'presensi.xlsx');
    }

    //EXPORT PDF DARI TABEL PRESENSI YANG TELAH DIBUAT PADA MODEL PRESENSI DENGAN MENGGUNAKAN LIBRARY DOMPDF
    public function exportPdf()
    {
        $presensis = Presensi::all();
        $pdf = PDF::loadView('export.presensipdf', ['presensis' => $presensis]);
        return $pdf->download('presensi.pdf');
    }

    public function preview()
    {
        $presensis = Presensi::all();
        return view('export.presensipdf', compact('presensis'));
    }
}
