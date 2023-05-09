import 'package:aplikasi_teman_berdoa/model/list_doa_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DoaProvider with ChangeNotifier {
  Future<List<ListDoaResponse>> api() async {
    final response =
        await Dio().get("https://doa-doa-api-ahmadramadhan.fly.dev/api");

    // ignore: no_leading_underscores_for_local_identifiers
    List<ListDoaResponse> _doahari = (response.data as List)
        .map(
          (e) => ListDoaResponse(
              id: e["id"],
              doa: e["doa"],
              ayat: e["ayat"],
              latin: e["latin"],
              artinya: e["artinya"]),
        )
        .toList();
    return _doahari;
  }
}
