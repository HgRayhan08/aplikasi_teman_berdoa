class FavoritDoaTable {
  final String title;
  final String arabic;
  final String latin;
  final String translation;

  FavoritDoaTable({
    required this.title,
    required this.arabic,
    required this.latin,
    required this.translation,
  });

  factory FavoritDoaTable.fromMap(Map<String, dynamic> map) => FavoritDoaTable(
        title: map["title"],
        arabic: map["arabic"],
        latin: map["latin"],
        translation: map["translation"],
      );
  Map<String, dynamic> toMap() => {
        "title": title,
        "arabic": arabic,
        "latin": latin,
        "translation": translation,
      };
}
