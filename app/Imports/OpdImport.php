<?php

namespace App\Imports;

use App\Models\Opd;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;

class OpdImport implements ToModel, WithHeadingRow, WithValidation
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        return new Opd([
            'kode' => $row['akronim'] ?? $row['kode'],
            'nama' => $row['opd'] ?? $row['nama'],
            'alamat' => $row['alamat'] ?? null,
            'kontak' => $row['kontak'] ?? null,
            'email' => $row['email'] ?? null,
        ]);
    }

    public function rules(): array
    {
        return [
            'akronim' => 'required_without:kode',
            'opd' => 'required_without:nama',
        ];
    }
}
