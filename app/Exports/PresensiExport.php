<?php

namespace App\Exports;

use App\Presensi;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class PresensiExport implements FromCollection, WithMapping, WithHeadings
{
    /**
     * @return \Illuminate\Support\Collection
     */
    public function collection()
    {
        return Presensi::all();
    }

    public function map($presensi): array
    {
        // This example will return 3 rows.
        // First row will have 2 column, the next 2 will have 1 column
        return [ 
            $presensi->name,
            $presensi->kelas,
            $presensi->created_at
        ];
    }

    public function headings(): array 
    {
        return [
            'NAMA',
            'KELAS',
            'WAKTU ABSEN',
        ];
    }
}
