class FavoritDoaTable {
  final String id;
  final String doa;
  final String ayat;
  final String latin;
  final String artinya;

  FavoritDoaTable({
    required this.id,
    required this.doa,
    required this.ayat,
    required this.latin,
    required this.artinya,
  });

  factory FavoritDoaTable.fromMap(Map<String, dynamic> map) => FavoritDoaTable(
        id: map["id"],
        doa: map["doa"],
        ayat: map["ayat"],
        latin: map["latin"],
        artinya: map["artinya"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "doa": doa,
        "ayat": ayat,
        "latin": latin,
        "artinya": artinya,
      };
}
