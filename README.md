**Nama : Dian Fathur Rahman**
**Kelas : PBP D**
**NPM : 2206082096**


**Tugas 7**

1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

    kalau stateless sejak awal widget itu dibuat tampilannya akan tetap sama tidak peduli apakah data di dalamnya berubah atau tidak sementara stateful widget apabila data di dalamnya dilakukan perubahan di dalam fungsi setState maka widget tersebut akan di render ulang.


2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

    a. Scaffold

        digunakan untuk mengatur tata letak aplikasi seperti AppBar, Text, dll

    b. AppBar

        untuk menampilkan widget-widget di bagian atas aplikasi

    c. Text

        untuk menampilkan text di suatu bagian aplikasi

    d. SingleChildScrollView

        untuk agar layar aplikasi dapat di scroll

    e. Padding

        untuk menambahkan padding atau batas pada aplikasi

    f. Column

        untuk menampilkan children secara vertikal

    g. TextStyle

        untuk menambahkan dekorasi kepada Text

    h. Material

        untuk

    i. InkWell

        untuk agar widget yang dilingkupi InkWell dapat ditekan

    j. Container

        untuk mengelompokkan widget

    k. MaterialApp
        


    l. Center

        untuk menempatkan 


3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

    1. membuat flutter project

    2. membuat menu.dart dan mengimport 'package:flutter/material.dart'

    3. memindahkan myhomepage ke menu.dart dan menghapus __MyHomePageState dan mengimport 'package:my_multipurpose_inventory/menu.dart' di main.dart

    4. mengubah sifat widget menjadi stateless

    5. mendefine tipe di menu.dart String, IconData, dan Color

    6. menambahkan barang di bawah homepage dengan warna masing-masing yang akan terhubung dengan color di Stateless widget

    7. melengkapi widget build di MyHomePage

    8. menambahkan stateless widget baru untuk menampilkan card

    9. init add commit dan push ke repo github



**Tugas 8**

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

    Navigator.push() akan menambahkan route baru diatas route yang sudah ada pada atas stack, sedangkan Navigator.pushReplacement() menggantikan route yang sudah ada pada atas stack dengan route baru tersebut. Misal, terdapat dua halaman berbeda HalamanSatu dan HalamanDua, terdapat tombol ke HalamanDua di HalamanSatu. Dengan push() jika user memilih HalamanDua, user masih dapat kembali ke HalamanSatu karena route yang ditambahkan berada pada paling atas stack. Dengan pushReplacement() jika user memilih HalamanDua, user tidak dapat kembali ke HalamanSatu karena route yang ditambahkan berada pada paling atas stack.

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

    1. Container: untuk menempatkan dan mengatur widget lainnya

    2. Row: untuk menempatkan widget secara horizontal

    3. Column: untuk menempatkan widget secara vertikal

    4. ListView: untuk menampilkan widgets dalam list yang dapat di scroll

    5. GridView: untuk menampilkan widgets dengan bentuk grid

    6. Stack: untuk menumpuk widget di atas satu sama lain

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

    Elemen input yang saya gunakan adalah textformfield, dalam elemen ini terdapat atribut onchanged yang akan langsung memasukkan value pada variable setelah kita memasukkan text. lalu ada attribut validator yang berfungsi untuk mengecek apakah inputnya sesuai dengan jenis value yang diinginkan.

4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

    Penerapan clean architectur dilakukan dengan membagi file dart ke direktori yang sesuai contohnya direktori screens yang berisi inventorilist_form yang berisi form untuk input grudge. Menu yang berisi semua tombol untuk add grudge, view grudge, dan logout yang belum bekerja. show_inventory yang menampilkan list yang berisi input dari inventorylist_form yang disimpan di grudge_data

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

    1. membuat direktori screens

    2. membuat left_drawer dan inventory_card dengan memindahkan grudgesitem dari menu di widgets

    3. membuat grudge_data untuk menyimpan grudges yang di input

    4. membuat inventorylist_form dan show_inventory ke screens

    5. menambahkan navigator.push() di inventory card dan menambahkan navigator.pushReplacement() di drawer sehingga dapat ke halaman tertentu jika sudah memencet tombol di menu atau di drawer untuk add grudge dan view grudge

    6. memindahkan grudgesitem ke inventory_card dan mengimpor semua import yang dibutuhkan seperti import inventorylist_form ke inventory_card dan import inventory_card ke menu

    7. add, commit, dan push ke repo online