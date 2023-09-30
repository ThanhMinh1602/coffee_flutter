import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final String path = join(await getDatabasesPath(), 'cart_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE cart(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        categoryId INTEGER,
        productName TEXT,
        productPrice REAL,
        productQuantity INTEGER,
        image TEXT
      )
    ''');
  }

  // Thêm sản phẩm vào giỏ hàng
  Future<int> addToCart(Map<String, dynamic> product) async {
    final Database db = await instance.database;
    return await db.insert('cart', product);
  }

  // Lấy danh sách sản phẩm trong giỏ hàng
  Future<List<Map<String, dynamic>>> getCart() async {
    final Database db = await instance.database;
    return await db.query('cart');
  }
}
