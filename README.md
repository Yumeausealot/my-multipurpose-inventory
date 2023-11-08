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