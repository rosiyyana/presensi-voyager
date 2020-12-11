<?php

namespace App; 

use Illuminate\Database\Eloquent\Model;

class Presensi extends Model
//MODEL UNTUK EXPORT PDF ATAUPUN EXCEL YANG BERDASARKAN TABEL PRESENSI PADA DATABASE
{
    protected $fillable = ['name', 'kelas', 'created_at', 'updated_at'];
}
