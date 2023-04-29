import 'package:aplikasi_teman_berdoa/screen/bacaan_sholat_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/dashboard_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/doa_harian_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/menu_sholat_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/niat_sholat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: DoaHarianScreen(),
      home: const DashboardScreen(),
      // home: BacaanSholatScreen(),
      initialRoute: DashboardScreen.routename,
      routes: {
        DashboardScreen.routename: (context) => const DashboardScreen(),
        BacaanSholatScreen.routename: (context) => const BacaanSholatScreen(),
        MenuSholatScreen.routename: (context) => const MenuSholatScreen(),
        DoaHarianScreen.routename: (context) => const DoaHarianScreen(),
        NiatSholatScreen.routename: (context) => const NiatSholatScreen(),
      },
    );
  }
}
