import 'package:aplikasi_teman_berdoa/model/list_bacaan_sholat_response.dart';
import 'package:flutter/material.dart';

class ExpansionTileCustom extends StatelessWidget {
  const ExpansionTileCustom({
    super.key,
    required List<ListBacaanSholatResponse>? bacaansholat,
    this.index,
  }) : _bacaansholat = bacaansholat;

  final List<ListBacaanSholatResponse>? _bacaansholat;
  final index;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(_bacaansholat?[index].name ?? ""),
      children: [
        ListTile(
          title: Text(
            _bacaansholat?[index].arabic ?? "",
            style: const TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            _bacaansholat?[index].latin ?? "",
            style: const TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}
