import 'dart:convert';

List<ListDoaResponse> listDoaResponseFromJson(String str) =>
    List<ListDoaResponse>.from(
        json.decode(str).map((x) => ListDoaResponse.fromJson(x)));

String listDoaResponseToJson(List<ListDoaResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListDoaResponse {
  String id;
  String doa;
  String ayat;
  String latin;
  String artinya;

  ListDoaResponse({
    required this.id,
    required this.doa,
    required this.ayat,
    required this.latin,
    required this.artinya,
  });

  factory ListDoaResponse.fromJson(Map<String, dynamic> json) =>
      ListDoaResponse(
        id: json["id"],
        doa: json["doa"],
        ayat: json["ayat"],
        latin: json["latin"],
        artinya: json["artinya"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "doa": doa,
        "ayat": ayat,
        "latin": latin,
        "artinya": artinya,
      };
}
