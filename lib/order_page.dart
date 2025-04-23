import 'package:flutter/material.dart';
import 'package:tugas_navi/detail_order_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  final TextEditingController makananController = TextEditingController();
  final TextEditingController minumanController = TextEditingController();
  final TextEditingController jmlMakananController = TextEditingController();
  final TextEditingController jmlMinumanController = TextEditingController();
  final int totalHarga = 0;
  
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text('Order Page')),
      body: Form(
        key: _formkey,
        child: Column(
          spacing: 16,
          children: [
            Text('MAKANAN'),

            TextFormField(
              controller: makananController,
              decoration: const InputDecoration(labelText: 'Pesan Makanan'),
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return 'Masukkan Pesanan Makanan Anda';
                }
                return null;
              },
            ),

            TextFormField(
              controller: jmlMakananController,
              decoration: const InputDecoration(labelText: 'Jumlah Makanan'),
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return 'Masukkan Jumlah Makanan';
                }
                return null;
              },
            ),

            Text('MINUMAN'),

            TextFormField(
              controller: minumanController,
              decoration: const InputDecoration(labelText: 'Pesan Minuman'),
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return 'Masukkan Pesanan Minuman Anda';
                }
                return null;
              },
            ),

            TextFormField(
              controller: jmlMinumanController,
              decoration: const InputDecoration(labelText: 'Jumlah Minuman'),
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return 'Masukkan Jumlah Minuman';
                }
                return null;
              },
            ),

            ElevatedButton(onPressed: () {
              if(_formkey.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                      (context) => DetailOrderPage(
                        makanan: makananController.text,
                        jmlMakanan: jmlMakananController.text,
                        minuman: minumanController.text,
                        jmlMinuman: jmlMinumanController.text,
                        totalHarga: totalHarga,
                      ))
                  );
              }
              return null;
            },
             child: Text('Pesan Sekarang'))
          ],
        ),
      ),
    );
  }
}
