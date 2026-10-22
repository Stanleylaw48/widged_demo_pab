import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Galeri Foto'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            Image.network(
              'https://picsum.photos/id/88/300/200',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul di tengah
                  Center(
                    child: Text(
                      'Jalan di Barcelona',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(height: 32),
                  // Baris lokasi: ikon + teks
                  Row(
                    children: [
                      Icon(Icons.place, color: Colors.red),
                      SizedBox(width: 12),
                      Text(
                        'Lokasi: Barcelona, Spanyol',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  // Baris publikasi: ikon + teks
                  Row(
                    children: [
                      Icon(Icons.calendar_month, color: Colors.blue),
                      SizedBox(width: 12),
                      Text(
                        'Publikasi: 13 Agustus 2013',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Divider(height: 32),
                  // Deskripsi
                  Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini '
                    'menampilkan berbagai kendaraan yang bergerak dalam arah yang '
                    'berbeda, menciptakan pemandangan yang sibuk dan energik.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}