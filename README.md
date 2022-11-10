# counter_7

A new Flutter project.

## Tugas 7
1. Stateless Widget adalah widget yang statis dimana seluruh konfigurasinya tidak akan berubah dari yang telah diinisiasi sejak awal. Sedangkan stateful widget adalah widget yang dinamis sehingga dapat berubah berdasarkan user actions atau ketika terjadinya perubahan data.
2. Column, Row, Align, Visibility, Padding, Text, FloatingActionButton. Column widget digunakan untuk menempatkan widget secara vertikal. Row widget adalah widget yang digunakan untuk menempatkan widget secara horizontal. Align widget adalah widget yang digunakan untuk meng-align childnya di dalam dirinya sendiri dan secara opsional mengukur dirinya berdasarkan ukuran childnya. Visibility widget adalah widget yang digunakan untuk menghilangkan atau menampilkan widget. Text widget adalah widget untuk menambahkan teks di layar. FloatingActionButton widget adalah widget yang digunakan sebagai tombol untuk menjalankan action.
3. setState() digunakan untuk mengubah (membuat ulang) widget dan childnya yang sudah diubah/diupdate. Dalam arti lain, setState() ini adalah sebuah cara untuk mengubah user interface. Variabel yang terdampak pada tugas 7 adalah counter. Namun, secara umum variabel yang terdampak adalah widget dan variabel (valuenya).
4. Final Variable artinya variable tersebut tidak dapat diubah jika sudah di assign oleh suatu value. Sedangkan const dapat berubah
5. Membuat program flutter bernama counter_7 dengan command flutter create. Menambahkan FloatingActionButton dengan icon remove di bagian kiri bawah, menggunakan row untuk membuat widget icon add dan remove sejajar. Menambahkan logic pada text genap dan ganjil. Selanjutnya, membuat fungsi decrement yang tugasnya untuk mengurangi counter. Lalu, menambahkan onPressed ke widget FloatingActionButton remove.

