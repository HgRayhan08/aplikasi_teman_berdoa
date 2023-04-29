import 'dart:convert';

List<ListNiatSholatResponse> listNiatSholatResponseFromJson(String str) =>
    List<ListNiatSholatResponse>.from(
        json.decode(str).map((x) => ListNiatSholatResponse.fromJson(x)));

String listNiatSholatResponseToJson(List<ListNiatSholatResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListNiatSholatResponse {
  int id;
  String name;
  String arabic;
  String latin;
  String terjemahan;

  ListNiatSholatResponse({
    required this.id,
    required this.name,
    required this.arabic,
    required this.latin,
    required this.terjemahan,
  });

  factory ListNiatSholatResponse.fromJson(Map<String, dynamic> json) =>
      ListNiatSholatResponse(
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
