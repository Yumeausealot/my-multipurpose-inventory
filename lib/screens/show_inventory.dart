import 'package:flutter/material.dart';
import 'package:my_multipurpose_inventory/grudge_data.dart';
import 'package:my_multipurpose_inventory/widgets/left_drawer.dart';

class ShowInventoryPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Grudges List'
          ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: Future.value(GrudgeData.grudges),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } 
          else if (snapshot.hasError) {
            return const Text('Error loading data');
          } 
          else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Text('No grudges found');
          } 
          else {
            List<Map<String, dynamic>> grudges = snapshot.data!;
            return DataTable(
              columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Amount')),
                DataColumn(label: Text('Description')),
              ],
              rows: grudges
                  .map(
                    (grudge) => DataRow(
                      cells: [
                        DataCell(Text(grudge['name'].toString())),
                        DataCell(Text(grudge['amount'].toString())),
                        DataCell(Text(grudge['description'].toString())),
                      ],
                    ),
                  )
                  .toList(),
            );
          }
        },
      ),
    );
  }
}
