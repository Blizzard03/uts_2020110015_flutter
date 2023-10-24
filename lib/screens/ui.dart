import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Marketplace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BagList(),
    );
  }
}

class BagList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tas Wanita'),
      ),
      body: ListView(
        children: [
          BagItem('assets/bag1.jpg', 'Tas Elegan', 'Rp 300,000'),
          BagItem('assets/bag2.jpg', 'Tas Kasual', 'Rp 250,000'),
          // Tambahkan tas lain di sini
        ],
      ),
    );
  }
}

class BagItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  BagItem(this.image, this.title, this.price);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset(image, height: 200, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Harga: $price',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk menambahkan tas ke keranjang belanja di sini
                  },
                  child: Text('Tambah ke Keranjang'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

flutter;:
  assets:
    - assets/
