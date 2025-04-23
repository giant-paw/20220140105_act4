import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Page')),
      body: Form(child: Column(
        spacing: 16,
        children: [
          
          Text('MAKANAN'),

          TextFormField(
            decoration: const InputDecoration(labelText: 'Pesan Makanan'),
          ),
          
          TextFormField(
            decoration: const InputDecoration(labelText: 'Jumlah Makanan'),
          ),
          
          Text('MINUMAN'),

          TextFormField(
            decoration: const InputDecoration(labelText: 'Pesan Minuman'),
          ),
          
          TextFormField(
            decoration: const InputDecoration(labelText: 'Jumlah Minuman'),
          ),


        ],
      )),
    );
  }
}
