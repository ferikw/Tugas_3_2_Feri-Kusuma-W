import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Resep Baru', textAlign: TextAlign.center),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('Close', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'RESEP BARU',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(height: 20.0),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: const Center(
                  child: Text(
                    'Luar Biasa Kamu Membuat Resep Baru! Ayo Mulai Resep Baru',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Berikan Nama Resep Kamu',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan Nama Resep',
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Estimasi waktu memasak (menit)',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Waktu Memasak',
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Deskripsi',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Waktu Deskripsi',
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Resep, Bahan, dan Langkah',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Resep detail',
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.green,
                              title: const Text('Data Tersimpan',
                                  style: TextStyle(color: Colors.white)),
                              content: const Text(
                                  'Data telah berhasil disimpan.',
                                  style: TextStyle(color: Colors.white)),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100.0, vertical: 12.0),
                        minimumSize: const Size(double.infinity, 0),
                      ),
                      child: const Text('Tambahkan Menu',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
