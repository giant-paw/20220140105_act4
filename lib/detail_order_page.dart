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
    return Scaffold(
      appBar: AppBar(title: Text('Detail Order Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pesanan Makanan: $makanan'),
            Text('Jumlah Makanan: $jmlMakanan'),
            Text('Pesanan Minuman: $minuman'),
            Text('Jumlah Makanan: $jmlMinuman'),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                /*

                CATATAN :
                kalau mau pakai Route '/homePage' memakai PUSHNAMEANDREMOVEUNTIL


                Navigator.pushAndRemoveUntil(
                  context,
                  
                  // MaterialPageRoute(builder: (context) => HomePage()),
 
                  '/homePage',
 
                  (route) => false,
                );
                
                */

                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/homePage',
                  (route) => false,
                );
              },
              child: Text('Pesan Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}
