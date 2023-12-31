import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemName;
  final int price;
  final String itemDescription;
  final int itemAmount;

  // You can pass more data here as needed

  DetailPage({
    required this.itemName,
    required this.itemAmount,
    required this.price,
    required this.itemDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom back button
            GestureDetector(
              onTap: () {
                // Navigate back to the previous screen
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text(' Back', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '$itemName',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Jumlah: $itemAmount'),
            const SizedBox(height: 10),
            Text('Harga: $price'),
            const SizedBox(height: 10),
            Text('Deskripsi: $itemDescription'),
          ],
        ),
      ),
    );
  }
}
