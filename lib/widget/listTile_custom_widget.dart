// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListTileCustom extends StatelessWidget {
  String title;
  ListTileCustom({super.key, required this.title});

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
        onTap: () {},
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
