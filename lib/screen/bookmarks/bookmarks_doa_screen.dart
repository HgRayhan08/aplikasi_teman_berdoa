import 'package:aplikasi_teman_berdoa/db/database_helper.dart';
import 'package:aplikasi_teman_berdoa/widget/listTile_custom_bookmarks.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookmarksDoaScreen extends StatelessWidget {
  const BookmarksDoaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/latarbelakang.jpg"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xff146C94),
          ),
          title: Text(
            "Bookmarks",
            style: GoogleFonts.nunito(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: const Color(0xff146C94)),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0,
          elevation: 0,
        ),
        body: FutureBuilder(
          future: DatabaseHelper().getListDoa(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data;
              return ListView.builder(
                itemCount: data?.length ?? 0,
                itemBuilder: (context, index) {
                  // return Text(data?[index].title ?? "");
                  return ListTileBookmarksCustom(
                    namabacaan: data?[index].title,
                    arab: data?[index].arabic,
                    terjemahan: data?[index].translation,
                    latin: data?[index].latin,
                  );
                },
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
