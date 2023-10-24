import 'package:flutter/material.dart';
import 'package:uts_2020110015/screens/product_detail/product_detail.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Produk 1'),
            subtitle: const Text('Deskripsi Produk 1'),
            trailing: const Text('Rp 100,000'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) =>
                      ProductDetail('Produk 1', 'Deskripsi Produk 1', 100000),
                ),
              );
            },
          ),
          // Tambahkan produk lain di sini
        ],
      ),
    );
  }
}
