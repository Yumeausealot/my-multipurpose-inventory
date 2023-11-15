import 'package:flutter/material.dart';
import 'package:my_multipurpose_inventory/screens/inventorylist_form.dart';
import 'package:my_multipurpose_inventory/screens/show_inventory.dart';

class GrudgesItem {
  final String name;
  final IconData icon;
  final Color color;

  GrudgesItem(this.name, this.icon, this.color);
}

class GrudgesCard extends StatelessWidget {
  final GrudgesItem item;

  const GrudgesCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("You have pushed the ${item.name} button!")));
          
          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Add Grudge") {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const InventoryFormPage()));
          }
          else if (item.name == "View Grudges") {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => ShowInventoryPage()));
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}