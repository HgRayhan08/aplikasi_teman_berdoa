import 'package:aplikasi_teman_berdoa/screen/bacaan_sholat_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/dashboard_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/doa_harian_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: DoaHarianScreen(),
      // home: DashboardScreen(),
      home: BacaanSholatScreen(),
    );
  }
}
