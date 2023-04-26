import 'package:aplikasi_teman_berdoa/service/bacaan_sholat.service.dart';
import 'package:aplikasi_teman_berdoa/service/doa_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    BacaanSholatService().bacaansholat();
    // DoaService().api();
    // Dio()
    //     .get("https://doa-doa-api-ahmadramadhan.fly.dev/api")
    //     .then((value) => print(value.data));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("sahabat muslim")),
    );
  }
}
