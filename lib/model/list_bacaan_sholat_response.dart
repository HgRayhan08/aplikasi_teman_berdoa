import 'dart:convert';

List<ListBacaanSholatResponse> listBacaanSholatResponseFromJson(String str) =>
    List<ListBacaanSholatResponse>.from(
        json.decode(str).map((x) => ListBacaanSholatResponse.fromJson(x)));

String listBacaanSholatResponseToJson(List<ListBacaanSholatResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListBacaanSholatResponse {
  int id;
  String name;
  String arabic;
  String latin;
  String terjemahan;

  ListBacaanSholatResponse({
    required this.id,
    required this.name,
    required this.arabic,
    required this.latin,
    required this.terjemahan,
  });

  factory ListBacaanSholatResponse.fromJson(Map<String, dynamic> json) =>
      ListBacaanSholatResponse(
        id: json["id"],
        name: json["name"],
        arabic: json["arabic"],
        latin: json["latin"],
        terjemahan: json["terjemahan"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "arabic": arabic,
        "latin": latin,
        "terjemahan": terjemahan,
      };
}
