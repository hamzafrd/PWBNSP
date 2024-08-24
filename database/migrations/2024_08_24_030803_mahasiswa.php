<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('mahasiswa', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('region_pribadi_id');
            $table->unsignedBigInteger('region_tempat_lahir_id');
            $table->string('nama_lengkap');
            $table->string('alamat_ktp');
            $table->string('alamat_lengkap');
            $table->string('nomor_telepon');
            $table->string('nomor_handphone');
            $table->string('email');
            $table->string('kewarganegaraan');
            $table->date('tanggal_lahir');
            $table->string('jenis_kelamin');
            $table->string('status_menikah');
            $table->string('agama');
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('region_pribadi_id')->references('id')->on('regions')->onDelete('cascade');
            $table->foreign('region_tempat_lahir_id')->references('id')->on('regions')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mahasiswa');
    }
};
