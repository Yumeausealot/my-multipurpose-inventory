import 'package:flutter/material.dart';
import 'package:my_multipurpose_inventory/widgets/left_drawer.dart';
import 'package:my_multipurpose_inventory/widgets/inventory_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final List<GrudgesItem> items = [
    GrudgesItem("View Grudges", Icons.checklist, Colors.indigo),
    GrudgesItem("Add Grudge", Icons.add_circle_outline, Colors.green),
    GrudgesItem("Logout", Icons.logout, Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Multipurpose Inventory',
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Currently Featuring: Web Page of Grudges', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((GrudgesItem item) {
                  // Iterasi untuk setiap item
                  return GrudgesCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}