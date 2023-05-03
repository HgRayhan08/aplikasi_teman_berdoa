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
      collapsedShape: const Border(bottom: BorderSide(color: Colors.white)),
      // backgroundColor: Colors.amber,
      // collapsedBackgroundColor: Colors.amber,
      title: Text(
        titleExtend,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      ),
      children: [
        ListTile(
          title: Text(
            titlelist,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    );
  }
}
