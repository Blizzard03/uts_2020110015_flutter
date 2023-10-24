// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String title;
  final String description;
  final int price;

  ProductDetail(this.title, this.description, this.price, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Deskripsi: $description'),
            Text('Harga: Rp $price'),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk menambahkan produk ke keranjang belanja di sini
              },
              child: Text('Tambah ke Keranjang Belanja'),
            ),
          ],
        ),
      ),
    );
  }
}
