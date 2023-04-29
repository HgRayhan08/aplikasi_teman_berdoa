import 'package:flutter/material.dart';

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
      title: Text(titleExtend),
      children: [
        ListTile(
          title: Text(titlelist),
          subtitle: Text(subtitle),
        )
      ],
    );
  }
}
