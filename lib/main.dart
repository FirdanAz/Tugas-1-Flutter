import 'package:flutter/material.dart';
import 'package:tugas_1/halamanUtama.dart';

void main() {
  runApp(const MyApp());
}
// Muhammad Firdan Ahzari
// 11 PPLG 1
// 25

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HalamanUtama(),
    );
  }
}