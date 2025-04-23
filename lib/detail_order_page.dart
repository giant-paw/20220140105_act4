import 'package:flutter/material.dart';

class DetailOrderPage extends StatelessWidget {
  // String disini
  final String makanan;
  final String jmlMakanan;
  final String minuman;
  final String jmlMinuman;
  final int totalHarga;
  
  const DetailOrderPage({
    super.key,
    required this.makanan,
    required this.jmlMakanan,
    required this.minuman,
    required this.jmlMinuman,
    required this.totalHarga,
    
    });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}