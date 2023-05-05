import 'package:aplikasi_teman_berdoa/model/list_doa_response.dart';
import 'package:dio/dio.dart';

class DoaService {
  //get doa
  Future<ListDoaResponse> api() async {
    final response =
        await Dio().get("https://islamic-api-zhirrr.vercel.app/api/doaharian");

    return ListDoaResponse.fromJson(response.data);
  }
}
