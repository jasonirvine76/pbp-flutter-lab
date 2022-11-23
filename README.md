# counter_7

A new Flutter project.

## Tugas 7
1. Stateless Widget adalah widget yang statis dimana seluruh konfigurasinya tidak akan berubah dari yang telah diinisiasi sejak awal. Sedangkan stateful widget adalah widget yang dinamis sehingga dapat berubah berdasarkan user actions atau ketika terjadinya perubahan data.
2. Column, Row, Align, Visibility, Padding, Text, FloatingActionButton. Column widget digunakan untuk menempatkan widget secara vertikal. Row widget adalah widget yang digunakan untuk menempatkan widget secara horizontal. Align widget adalah widget yang digunakan untuk meng-align childnya di dalam dirinya sendiri dan secara opsional mengukur dirinya berdasarkan ukuran childnya. Visibility widget adalah widget yang digunakan untuk menghilangkan atau menampilkan widget. Text widget adalah widget untuk menambahkan teks di layar. FloatingActionButton widget adalah widget yang digunakan sebagai tombol untuk menjalankan action.
3. setState() digunakan untuk mengubah (membuat ulang) widget dan childnya yang sudah diubah/diupdate. Dalam arti lain, setState() ini adalah sebuah cara untuk mengubah user interface. Variabel yang terdampak pada tugas 7 adalah counter. Namun, secara umum variabel yang terdampak adalah widget dan variabel (valuenya).
4. Final Variable artinya variable tersebut tidak dapat diubah jika sudah di assign oleh suatu value. Sedangkan const dapat berubah
5. Membuat program flutter bernama counter_7 dengan command flutter create. Menambahkan FloatingActionButton dengan icon remove di bagian kiri bawah, menggunakan row untuk membuat widget icon add dan remove sejajar. Menambahkan logic pada text genap dan ganjil. Selanjutnya, membuat fungsi decrement yang tugasnya untuk mengurangi counter. Lalu, menambahkan onPressed ke widget FloatingActionButton remove.

## Tugas 8
1. Perbedaan Navigator.push dengan Navigator.pushReplacement adalah pada Navigator.push, halaman baru yang ingin ditampilkan di push ke stack tanpa mengganti halaman sebelumnya sehingga ketika dilakukan Navigator.pop(), halaman yang baru muncul tetapi pengguna dapat pindah ke halaman sebelumnya. Pada Navigator.pushReplacement, halaman baru yang ingin ditampilkan akan me-replace halaman sebelumnya pada stack. Hal ini menyebabkan pengguna tidak dapat kembali ke halaman sebelumnya.
2. Scaffold berfungsi untuk struktur layout halaman aplikasi, Center berfungsi untuk menampilkan child widgetnya ke tengah, ListView adalah widget scrollable untuk menampilkan widget-widget yang menjadi childrennya, DropdownButton widget yang berfungsi untuk menampilkan dropdown, Form adalah widget yang berfungsi untuk menampilkan input/form field.
3. onEnter, onExit, onHover, onPressed, onSaved, onChanged, dan lainnya.
4. Cara navigator mengganti halaman adalah menerapkan stack. Halaman yang ditampilkan kepada pengguna berada pada top of stack. Ketika pengguna ingin mengganti halaman baru, maka halaman baru akan di push ke stack. Jika pengguna ingin berganti halaman, maka halaman sebelumnya di pop.
5. Membuat drawer.dart untuk memunculkan drawer pada setiap halaman, children dari drawer adalah tiga ListTile yang bertujuan untuk merujuk ke halaman yang ingin dituju. Mengimport drawer.dart dan menggunakannya pada bagian drawer:. Lalu, membuat halaman form yang berisi TextFormField, DropdownButton, dan Datepicker. Lalu tambahkan tombol simpan yang berguna untuk membuat objek budget lalu disimpan di List. Selanjutnya, membuat data.dart yang berguna untuk menampilkan data dari form.dart. Kita mengimport list dari form.dart yang berisi objek dari budget. Membuat widget Card untuk menampilkan datanya, lalu membuat ListView.builder dengan list budget lalu me-return Card untuk ditampilkan data-data dari masing-masing objek.

## Tugas 9
1.  Kita dapat mengambil JSON tanpa membuat model sekalipun. Namun, untuk memudahkan dan menerapkan best practice kita harus membuat model. Hal ini memudahkan kita dalam mengambil data dari JSON, jika kita ingin mengakses data untuk field tertentu tinggal memanggil properti/atribut dari object yang sudah di assign dengan data JSON.
2. Scaffold berfungsi untuk struktur layout halaman aplikasi, Center berfungsi untuk menampilkan child widgetnya ke tengah, ListView adalah widget scrollable untuk menampilkan widget-widget yang menjadi childrennya, FutureBuilder adalah widget yang dibentuk dari snapshot terbaru dari Future, Checkbox adalah widget untuk menampilkan input field checkbox, RichText adalah widget untuk menampilkan text dan fiturnya lebih kaya dari Text biasa, Card adalah widget yang digunakan untuk menampilkan informasi dengan blok, rounded corner, dan shadow pada bagian ujungnya.
3. - Membuat fungsi Future yang akan dipanggil oleh FutureBuilder
   - Memanggil url yang akan kita parse JSON-nya
   - Melakukan pemanggilan dengan method get dari package http
   - Melakukan decode terhadap JSON dari URL yang kita panggil
   - Memasukkan data JSON ke model yang sudah kita buat lalu setiap objeknya dimasukkan ke list lalu di return
   - Membuat FutureBuilder yang isinya terdapat parameter future dan builder yang berupa anonymous function yang akan mengembalikan widget yang ditampilkan berdasarkan      hasil dari fungsi yang dipanggil di parameter future yang nantinya juga akan menjadi parameter snapshot pada builder.
   - Mengatur anonymous function pada builder sehingga dapat menampilkan widget yang sesuai dengan keinginan kita.
4. - Membuat model class berdasarkan URL Tugas 3 dengan QuickType, lalu file disimpan di mywatchlist.dart
   - Menginstall http package dan meng-allow internet pada proyek ini
   - Menambah ListTile pada drawer untuk menuju page yang menampilkan data dari mywatchlist
   - Membuat file baru khusus untuk meng-fetch data dari URL Tugas 3
   - Membuat file untuk menampilkan data, yaitu mywatchlist_data.dart
   - Membuat stateful widget yang mereturn Scaffold dengan appBar yang berisi judul, drawer yang berisi drawer yang sudah dibuat sebelumnya, dan body yang berisi
     FutureBuilder
   - Membuat FutureBuilder yang isinya terdapat parameter future dan builder yang berupa anonymous function yang akan mengembalikan widget yang ditampilkan berdasarkan      hasil dari fungsi yang dipanggil di parameter future yang nantinya juga akan menjadi parameter snapshot pada builder.
   - Pada anonymous function jika data snapshot masih null akan ditampilkan CircularProgressIndicator(). Jika data snapshot tidak null tapi kosong akan ditampilkan
     pesan tidak ada watchlist dan jika ada akan ditampilkan ListView builder.
   - ListView akan berisi card dan ketika ditekan akan beralih ke page detail mywatchlist
   - Page detail akan berisi informasi film dengan lengkap
   - Pada card jika film sudah ditonton akan menampilkan outline color biru sedangkan jika belum ditonton akan menampilkan outline color merah. Dan akan ditampilkan
     checkbox untuk mengubah status watched.
   - Membuat file mywatchlist_detail.dart untuk menampilkan informasi dari film, memakai widget Column untuk menampilkan datanya
   - Lalu tambahkan button untuk kembali ke page kumpulan mywatchlist
