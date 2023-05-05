import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ExpansionTileCustom extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final listdata;
  String titleExtend;
  String titlelist;
  String subtitle;

  ExpansionTileCustom(
      {super.key,
      required this.listdata,
      required this.titleExtend,
      required this.titlelist,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      collapsedShape: const Border(bottom: BorderSide(color: Colors.white)),
      title: Text(
        titleExtend,
        style: GoogleFonts.varelaRound(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
      children: [
        ListTile(
          title: Text(
            titlelist,
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 22),
          ),
          subtitle: Text(
            subtitle,
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    );
  }
}
