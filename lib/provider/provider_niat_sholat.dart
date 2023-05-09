import 'package:aplikasi_teman_berdoa/model/list_niat_sholat_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProviderNiatSholat with ChangeNotifier {
  Future<List<ListNiatSholatResponse>> niatsholat() async {
    final response =
        await Dio().get("https://islamic-api-zhirrr.vercel.app/api/niatshalat");
    // ignore: no_leading_underscores_for_local_identifiers
    List<ListNiatSholatResponse> _niatsholat = (response.data as List)
        .map(
          (e) => ListNiatSholatResponse(
              id: e["id"],
              name: e["name"],
              arabic: e["arabic"],
              latin: e["latin"],
              terjemahan: e["terjemahan"]),
        )
        .toList();
    // print(_niatsholat.first.name);
    return _niatsholat;
  }
}
