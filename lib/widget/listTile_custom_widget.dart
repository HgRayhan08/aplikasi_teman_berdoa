// ignore_for_file: file_names
import 'package:aplikasi_teman_berdoa/screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ListTileCustom extends StatelessWidget {
  // String title;
  final String? namabacaan;
  final String? arab;
  final String? terjemahan;
  final String? latin;
  const ListTileCustom(
      {super.key, this.namabacaan, this.arab, this.terjemahan, this.latin});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: const Border(
        bottom: BorderSide(
          color: Colors.white,
        ),
      ),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                namabacaan: namabacaan.toString(),
                arab: arab ?? "",
                latin: latin.toString(),
                terjemahan: terjemahan.toString(),
              ),
            ),
          );
        },
        title: Text(
          namabacaan ?? "Data Tidak Dapat Diambil",
          style: GoogleFonts.varelaRound(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
