// ignore_for_file: file_names
import 'package:aplikasi_teman_berdoa/screen/detail/detail_isbookmarks_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ListTileBookmarksCustom extends StatelessWidget {
  // String title;
  final String? namabacaan;
  final String? arab;
  final String? terjemahan;
  final String? latin;
  const ListTileBookmarksCustom(
      {super.key, this.namabacaan, this.arab, this.terjemahan, this.latin});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff6096B4),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ListTile(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        tileColor: const Color(0xff146C94),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailisBookmarks(
                isBookMarks: true,
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
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
