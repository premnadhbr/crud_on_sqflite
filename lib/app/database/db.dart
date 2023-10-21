import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Future<Database> _opendatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, "helper.db");
    return openDatabase(path, version: 1, onCreate: oncreate);
  }

  static Future<void> oncreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE my_table (
            id INTEGER PRIMARY KEY,
            name TEXT,
            age INTEGER
          )
        ''');
  }

  static Future<int> insertUser(String name, int age) async {
    final db = await _opendatabase();
    final data = {
      'name': name,
      'age': age,
    };
    return await db.insert('my_table', data);
  }

  static Future<List<Map<String, dynamic>>> getdata() async {
    final db = await _opendatabase();
    return await db.query('my_table');
  }

  static Future<int> deleteData()async{

  }
}
