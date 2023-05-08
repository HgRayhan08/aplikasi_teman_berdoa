import 'package:aplikasi_teman_berdoa/model/local_database/doa_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static late Database _database;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  Future<Database> get database async {
    _database = await _initializeDB();
    return _database;
  }

  final String _tableName = 'tbl_doaharian';

  Future<Database> _initializeDB() async {
    var db = openDatabase(
        join(
          await getDatabasesPath(),
          'doa_db.db',
        ), onCreate: (db, version) async {
      await db.execute(
        '''CREATE TABLE $_tableName(id TEXT PRIMARY KEY  ,doa TEXT , ayat TEXT , latin TEXT , artinya TEXT)''',
      );
    }, version: 1);

    return db;
  }

  Future<List<FavoritDoaTable>> getListDoa() async {
    final db = await database;
    List<Map<String, dynamic>> results = await db.query(_tableName);
    return results
        .map(
          (e) => FavoritDoaTable.fromMap(e),
        )
        .toList();
  }

  Future<void> insertDOa(FavoritDoaTable favoritDoaTable) async {
    final db = await database;
    await db.insert(_tableName, favoritDoaTable.toMap());
  }

  Future<int> deleteDoa(String id) async {
    final db = await database;
    return await db.delete(_tableName, where: 'id = ? ', whereArgs: [id]);
  }

  Future<FavoritDoaTable> getStatusDoa(String id) async {
    final db = await database;

    List<Map<String, dynamic>> results = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    return results
        .map(
          (e) => FavoritDoaTable.fromMap(e),
        )
        .first;
  }
}
