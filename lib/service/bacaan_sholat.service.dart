import 'package:aplikasi_teman_berdoa/model/list_bacaan_sholat_response.dart';
import 'package:dio/dio.dart';

class BacaanSholatService {
  // get data
  Future<List<ListBacaanSholatResponse>> bacaansholat() async {
    final response = await Dio()
        .get("https://islamic-api-zhirrr.vercel.app/api/bacaanshalat");
    // ignore: no_leading_underscores_for_local_identifiers
    List<ListBacaanSholatResponse> _bacaansholat = (response.data as List)
        .map(
          (e) => ListBacaanSholatResponse(
              id: e["id"],
              arabic: e["arabic"],
              latin: e["latin"],
              name: e["name"],
              terjemahan: e["terjemahan"]),
        )
        .toList();
    // print(_bacaansholat.first.name);
    return _bacaansholat;
  }
}
