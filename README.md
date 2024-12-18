1. Pengertian State Management
- State management adalah proses pengelolaan state dalam aplikasi.
- State: Data atau informasi yang merepresentasikan kondisi aplikasi pada suatu waktu.
- Pengaruh State: Mempengaruhi tampilan dan perilaku UI, termasuk input pengguna, data dari server, atau elemen UI yang sedang aktif.
  
2. Peruntukan State
- State digunakan untuk memastikan data atau kondisi aplikasi selalu sesuai dengan kebutuhan tampilan dan interaksi pengguna. Proses ini penting dalam pengembangan aplikasi modern untuk menjaga konsistensi.

3. MVC (Model-View-Controller)
- MVC adalah pola desain untuk memisahkan aplikasi menjadi tiga komponen utama:
- Model: Bagian yang menangani data dan logika bisnis aplikasi.
- View: Bagian yang bertanggung jawab atas tampilan aplikasi.
- Controller: Penghubung antara Model dan View, yang mengelola alur data dan logika aplikasi.
- Tujuan dari MVC adalah meningkatkan modularitas kode, sehingga memudahkan pengembangan, perawatan, dan pengujian aplikasi.

4. GetX (State Management di Flutter)
- GetX adalah alternatif untuk mengelola state tanpa menggunakan widget stateful. GetX memiliki dua pendekatan utama:
a. Reactive GetX
Menggunakan tipe data reaktif (Rx) seperti:
- RxList<T>: Untuk daftar (list) data. Contoh: RxList<String> = <String>[].obs.
- RxInt: Untuk tipe data integer.
- RxString: Untuk tipe data string.
- RxBool: Untuk boolean.
- Rx<T>: Untuk objek tertentu, misalnya Rx<User>.
- Penggunaan: Observasi perubahan menggunakan .obs dan widget seperti Obx(() => Widget) untuk memantau perubahan secara langsung.
b. Simple GetX
- Tidak menggunakan tipe data reaktif (Rx), tetapi tetap membutuhkan GetxController.
- Perubahan data dilakukan dengan memanggil metode update() dari GetxController.
  
5. Penerapan (Markicob)
- Contoh kode penerapan diberikan untuk kedua pendekatan GetX, baik reactive maupun simple, untuk menunjukkan bagaimana pengelolaan state dilakukan secara efisien.
