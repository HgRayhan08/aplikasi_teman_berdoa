// To parse this JSON data, do
//
//     final listDoaResponse = listDoaResponseFromJson(jsonString);

import 'dart:convert';

ListDoaResponse listDoaResponseFromJson(String str) => ListDoaResponse.fromJson(json.decode(str));

String listDoaResponseToJson(ListDoaResponse data) => json.encode(data.toJson());

class ListDoaResponse {
    List<Datum> data;

    ListDoaResponse({
        required this.data,
    });

    factory ListDoaResponse.fromJson(Map<String, dynamic> json) => ListDoaResponse(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String title;
    String arabic;
    String latin;
    String translation;

    Datum({
        required this.title,
        required this.arabic,
        required this.latin,
        required this.translation,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        title: json["title"],
        arabic: json["arabic"],
        latin: json["latin"],
        translation: json["translation"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "arabic": arabic,
        "latin": latin,
        "translation": translation,
    };
}
