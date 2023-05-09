import 'package:aplikasi_teman_berdoa/provider/provider_doa.dart';
import 'package:aplikasi_teman_berdoa/screen/bacaan%20sholat/bacaan_sholat_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/dashboard_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/doa/doa_harian_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/niat%20sholat/niat_sholat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ProviderDoa(),
    ),
    
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DashboardScreen(),
      initialRoute: DashboardScreen.routename,
      routes: {
        DashboardScreen.routename: (context) => const DashboardScreen(),
        BacaanSholatScreen.routename: (context) => const BacaanSholatScreen(),
        DoaHarianScreen.routename: (context) => const DoaHarianScreen(),
        NiatSholatScreen.routename: (context) => const NiatSholatScreen(),
        
      },
    );
  }
}
