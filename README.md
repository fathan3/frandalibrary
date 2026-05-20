# 📚 Franda Library - Perpustakaan Digital

Franda Library adalah aplikasi web Perpustakaan Digital modern yang dirancang untuk mempermudah pengelolaan sirkulasi buku, peminjaman, pengembalian, serta pencatatan ulasan buku. Aplikasi ini mendukung tiga tingkat akses pengguna: **Admin**, **Petugas**, dan **Peminjam**.

Aplikasi ini dibangun menggunakan **PHP**, **MySQL**, **Bootstrap 5**, dan pustaka JavaScript interaktif seperti **DataTables** dan **Chart.js**.

---

## 🚀 Demo & Tautan Penting
- **Link Hosting**: [https://frandalibrary.000webhostapp.com/](https://frandalibrary.000webhostapp.com/)
- **Konfigurasi Database**: [koneksi.php](file:///c:/xamppp/htdocs/PerpusDigital/include/koneksi.php)
- **Skema Database**: [perpusdigital_fathan.sql](file:///c:/xamppp/htdocs/PerpusDigital/database/perpusdigital_fathan.sql)

---

## 🛠️ Fitur Utama Berdasarkan Hak Akses

### 👑 1. Admin
*   **Manajemen Buku**: Menambah, mengubah, dan menghapus data buku serta mengunggah file cover/PDF buku.
*   **Manajemen Kategori**: Menambah, mengubah, dan menghapus kategori buku.
*   **Sirkulasi & Transaksi**: Melakukan verifikasi dan konfirmasi peminjaman serta pengembalian buku dari anggota.
*   **Laporan**: Melihat dan mencetak laporan transaksi peminjaman buku.
*   **Moderasi Ulasan**: Menghapus ulasan buku yang tidak pantas.
*   **Registrasi Staff**: Mendaftarkan akun Admin baru atau Petugas baru secara khusus.

### 🛡️ 2. Petugas
*   **Manajemen Buku**: Menambah, mengubah, dan menghapus data buku.
*   **Manajemen Kategori**: Menambah, mengubah, dan menghapus kategori buku.
*   **Sirkulasi & Transaksi**: Melakukan verifikasi peminjaman dan pengembalian buku.
*   **Laporan**: Melihat dan mengunduh laporan peminjaman buku.
*   **Moderasi Ulasan**: Menghapus ulasan buku.

### 👥 3. Peminjam (Anggota)
*   **Pencarian & Eksplorasi**: Mencari dan melihat detail informasi buku.
*   **Peminjaman Buku**: Mengajukan peminjaman buku secara digital.
*   **Membaca Buku**: Membaca buku langsung via PDF (setelah disetujui oleh Admin/Petugas).
*   **Ulasan & Rating**: Memberikan ulasan serta penilaian (rating) untuk buku yang dibaca.

---

## 🔑 Kredensial Akun Demo (Bawaan)

Untuk keperluan pengujian, berikut adalah akun bawaan yang dapat digunakan untuk masuk ke sistem di halaman [login.php](file:///c:/xamppp/htdocs/PerpusDigital/login.php):

| Role | Username | Password |
| :--- | :--- | :--- |
| **Admin** | `Franda` | `franda` |
| **Petugas** | `Irwan` | `irwan` |
| **Peminjam** | `Kurniawan` | `kurniawan` |

---

## 📦 Struktur Direktori Proyek

Berikut adalah gambaran umum dari struktur berkas aplikasi ini:

```bash
PerpusDigital/
├── assets/             # Aset gambar, ikon, cover buku, dan demo charts
├── css/                # Gaya tampilan (personal.css & bootstrap styles.css)
├── database/           # Dump SQL database perpusdigital_fathan.sql
├── include/            # Berkas fungsi global dan koneksi database
├── js/                 # Logika JavaScript untuk interaktivitas dan DataTables
├── page/               # Halaman modul (buku, kategori, peminjaman, ulasan, dll.)
├── index.php           # Halaman utama setelah login / Dashboard
├── login.php           # Halaman login sistem
├── logout.php          # Proses keluar dari sesi pengguna
└── register.php        # Halaman pendaftaran peminjam baru
```

---

## ⚙️ Langkah Pemasangan Lokal (Local Setup)

Ikuti langkah-langkah berikut untuk menjalankan proyek di komputer lokal menggunakan XAMPP:

### 1. Persiapan Folder Proyek
1. Pastikan Anda sudah mengunduh proyek ini dan meletakkannya di folder root web server Anda:
   ```bash
   C:\xampp\htdocs\PerpusDigital
   ```

### 2. Import Database
1. Buka aplikasi **XAMPP Control Panel** dan jalankan modul **Apache** serta **MySQL**.
2. Buka peramban (browser) dan akses `http://localhost/phpmyadmin/`.
3. Buat database baru dengan nama `perpusdigital_fathan`.
4. Pilih database tersebut, masuk ke tab **Import**, lalu pilih berkas SQL database:
   [perpusdigital_fathan.sql](file:///c:/xamppp/htdocs/PerpusDigital/database/perpusdigital_fathan.sql)
5. Klik **Go** / **Kirim** untuk mengimpor tabel dan data bawaan.

### 3. Konfigurasi Koneksi Database
Jika Anda menggunakan pengaturan MySQL default pada XAMPP (host: `localhost`, user: `root`, tanpa password), konfigurasi di berkas [include/koneksi.php](file:///c:/xamppp/htdocs/PerpusDigital/include/koneksi.php) sudah siap digunakan:
```php
<?php
session_start();
$koneksi = mysqli_connect("localhost", "root", "", "perpusdigital_fathan");
?>
```
*Sesuaikan parameter jika terdapat perbedaan pengaturan port atau password pada MySQL lokal Anda.*

### 4. Jalankan Aplikasi
1. Buka browser Anda dan navigasikan ke alamat berikut:
   ```bash
   http://localhost/PerpusDigital/
   ```
2. Anda akan diarahkan ke halaman login dan dapat langsung menggunakan akun demo di atas.