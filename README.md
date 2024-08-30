# PWBNS - Pengembang Web BNSP untuk sertifikat BNPS Pengembang Web
<img width="955" alt="Halaman home" src="https://github.com/user-attachments/assets/86c011a8-b9a4-4dfc-8a6b-1328b7e8f384">
Aplikasi Pendaftaran dan Seleksi Mahasiswa Baru Untuk Sertifikat Pengembang Web BNSP yang diadakan di Politeknik Negeri Jakarta

## **Fitur**

- **Halaman Home**: Informasi dasar tentang aplikasi.
- **Halaman Admin**: Mengelola data, Memverifikasi Dokumen, dan Mengelola Akun Pengguna.

## **Beberapa Screenshot Aplikasi**
![verifkasi dokumen](https://github.com/user-attachments/assets/394c0502-6b3b-427e-8e4b-3a79cc5838ad)
![halamam peninjuan dokumen](https://github.com/user-attachments/assets/eb0b874d-849f-4cd7-9461-4aceabe5227a)
![halaman daftar-form mahasiswa](https://github.com/user-attachments/assets/f221519e-76f2-444d-8ab7-0e720ac9d7ca)
![halaman seleksi](https://github.com/user-attachments/assets/b144dbd4-80b8-4169-a1e9-6f09f0ae8255)
## **Instalasi**

### **Prasyarat**

Sebelum menginstal aplikasi ini, pastikan Anda sudah menginstal beberapa perangkat lunak berikut:

- PHP >= 8.3
- Composer
- Node.js & NPM
- MySQL atau DBMS lain yang didukung Laravel

### **Langkah-langkah Instalasi**

1. **Clone Repository**

   ```bash
   git clone https://github.com/hamzafrd/PWBNSP.git
   cd PWBNSP
   ```

2. **Salin File Konfigurasi**

   ```bash
   cp .env.example .env
   ```

3. **Instal Dependensi**

   - Instal dependensi PHP menggunakan Composer:
     ```bash
     composer install
     ```
   - Instal dependensi frontend menggunakan NPM:
     ```bash
     npm install
     ```

4. **Generate Key Aplikasi**

   ```bash
   php artisan key:generate
   ```

5. **Konfigurasi Database**

   - Buka file `.env` dan sesuaikan konfigurasi database Anda:
     ```plaintext
     DB_CONNECTION=mysql
     DB_HOST=127.0.0.1
     DB_PORT=3306
     DB_DATABASE=pwbnsp_laravel
     DB_USERNAME=username_anda
     DB_PASSWORD=password_anda
     ```

6. **Migrasi dan Seed Database**

   ```bash
   php artisan migrate --seed
   ```

7. **Kompilasi Asset Frontend**

   ```bash
   npm run dev
   ```

8. **Jalankan Aplikasi**

   ```bash
   php artisan serve
   ```

   Aplikasi akan berjalan di `http://localhost:8000`.

## **Penggunaan**

- **Halaman Home**: Akses halaman home di `http://localhost:8000` untuk melihat informasi umum.
- **Halaman Admin**: Akses halaman admin di `http://localhost:8000/dashboard` setelah login.

## **Lisensi**

Aplikasi ini dilisensikan di bawah [MIT License](LICENSE).
