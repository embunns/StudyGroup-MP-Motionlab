Pengertian Utama:
State: Keadaan atau informasi yang dapat berubah dalam aplikasi. Contohnya adalah poin dalam game atau teks yang diketik dalam aplikasi catatan.
State Management: Proses mengelola state untuk memengaruhi tampilan dan perilaku UI berdasarkan kondisi aplikasi.

Jenis State di Flutter:
Stateless Widget: Tidak berubah; state tetap sama.
Stateful Widget: Dapat berubah sesuai interaksi pengguna atau perubahan data.

Komponen Utama State Lifecycle di Flutter:
Stateless Widget: Memiliki constructor dan metode build().
Stateful Widget: 
- Lifecycle terdiri dari:
- createState()
- initState()
- build()
- setState() (untuk memperbarui UI).

Metode setState:
- Digunakan untuk memberi tahu Flutter bahwa ada perubahan state sehingga UI perlu di-rebuild.
- Membantu menjaga performa aplikasi dengan hanya menggambar ulang bagian yang terdampak.

Widget Tree dan Inherited Widget:
Widget Tree: Struktur hierarki dari semua widget yang membangun antarmuka aplikasi.
Inherited Widget: Cara bawaan Flutter untuk berbagi data antar-widget dalam widget tree tanpa harus eksplisit mengoper data melalui tiap widget.

Callback Function:
Fungsi yang dipanggil kembali setelah peristiwa tertentu terjadi, sering digunakan untuk menangani interaksi pengguna atau hasil proses asinkron.
