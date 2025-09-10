import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabaseService {
  static const String _databaseName = 'tourism-app.db';
  static const String _tableName = 'tourism';
  static const int _version = 1;

  /// Create databse method
  Future<void> createTables(Database database) async {
    await database.execute('''
        CREATE TABLE $_tableName(
      id INTEGER PRIMARY KEY,
       name TEXT,
       description TEXT,
       address TEXT,
       longitude REAL,
       latitude REAL,
       like INTEGER,
       image TEXT
       )
''');
  }

  /// Initialize database method
  Future<Database> _initializeDb() async {
    return openDatabase(
      _databaseName,
      version: _version,
      onCreate: (Database database, int version) async {
        await createTables(database);
      },
    );
  }

  /// Insert data to database method
  Future<int> insertItem(Tourism tourism) async {
    final db = await _initializeDb();
    final data = tourism.toJson();

    final id = await db.insert(
      _tableName,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return id;
  }

  /// Get all data from database method
  Future<List<Tourism>> getAllItem() async {
    final db = await _initializeDb();
    final result = await db.query(_tableName);

    return result.map((result) => Tourism.fromJson(result)).toList();
  }

  /// Get item by id from databse method
  Future<Tourism?> getItemById(int id) async {
    final db = await _initializeDb();
    final result = await db.query(
      _tableName,
      where: "id : ?",
      whereArgs: [id],
      limit: 1,
    );

    return result.isEmpty ? null : Tourism.fromJson(result.first);
  }

  /// Delet item by id from database method
  Future<int> deleteItem(int id) async {
    final db = await _initializeDb();
    final result = db.delete(_tableName, where: "id : ?", whereArgs: [id]);

    return result;
  }
}
