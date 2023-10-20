import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await openDatabase(
      join(await getDatabasesPath(), 'DEMO_230623.db'), // Set the database file name here
      onCreate: (db, version) {
        // Create tables and initialize the database schema here
      },
      version: 1,
    );

    return _database!;
  }
}