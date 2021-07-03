import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_ap2/Models/person.dart';


class DatabaseHelper {
  static DatabaseHelper? _databaseHelper; //SINGLETON//PADRAO DE PROJETO
  static Database? _database; // singleton database
  String personTable = 'person_table';
  String colId = 'id';
  String colName = 'name';
  String colAgeOptions = 'age';
  String colBloodPressureOptions = 'bloodPressure';
  // String colCholesterolOptions = "_cholesterolOptions";
  // String colFamilyIllnessOptions = "_familyIllnessOptions";
  // String colGenderOptions = "_genderOptions";
  // String colSmokeOptions = "_smokeOptions"; 
  // String colWheightOptions = "_wheightOptions";
  // String colActivityOptions = "activity"


  DatabaseHelper._createInstancia(); //Construtor nomeado.

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstancia();
    }
    return _databaseHelper!;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'Create table $personTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colName TEXT, $colAgeOptions INTEGER)');
  }

// void _createDb(Database db, int newVersion) async {
//     await db.execute(
//         'Create table $personTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colName TEXT, $colAgeOptions INTEGER, $colBloodPressureOptions INTEGER, $colCholesterolOptions INTEGER, $colFamilyIllnessOptions INTEGER, $colGenderOptions INTEGER, $colSmokeOptions INTEGER, $colWheightOptions INTEGER)');
//   
//   }

  void _onUpgrade(Database db, int oldVersion, int newVersion) async {
    await db.execute("DROP TABLE $personTable");
    await db.execute('Create table $personTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colName TEXT, $colAgeOptions INTEGER)');

  }

    Future<Database> initializeDatabase() async{
    Directory diretorio = await getApplicationDocumentsDirectory();
    String path=diretorio.path+ "person2.db";
    var personDatabase= await openDatabase(path, version: 9,onCreate:_createDb, onUpgrade: _onUpgrade );
    return personDatabase;
  }

    Future<Database> get database async{
    if(_database == null){
      _database = await initializeDatabase();
    }
    return _database!;
    }

//   //add
    Future<int> insertPerson(Person person) async{
    Database db = await this.database;
    var result=db.insert(personTable, person.toMap());
    return result;
     }

// //update
//     Future<int> updatePerson(Person person) async {
//       Database db = await this.database;
//       //  db.query("Update from persontable .............. where id=id")
//       var result = db.update(
//           personTable, person.toMap(), where: '$colId =?', whereArgs: [person.id]);
//       return result;
//     }

// //seleção maps
//   Future<List<Map<String, dynamic>>> getPersonMapList() async {
//     Database db = await this.database;
// //		var result = await db.rawQuery('SELECT * FROM $personTable order by $colTitle ASC');
//     var result = await db.query(personTable, orderBy: '$colName ASC');
//     return result;
//   }

// Future <List<Person>> getPersonList() async{
//     var personMapList = await getPersonMapList();
//    // int count =personMapList.length;
//     int count =personMapList.length;
//     List<Person> personList = List<person>();
//     for(int i=0;i<count; i++){
//       personList.add(Person.fromMapObject(personMapList[i]));
//     }
//     return personList;
// }

// //delete

//   Future<int> deletePerson(int id) async{
//     Database db = await this.database;
//     //  db.query("Update from persontable .............. where id=id")
//     //var result=db.update(personTable, person.toMap(),where: '$colId =?',whereArgs: [person.id] );
//   ///  db.delete(table)
//     ///  id = person.id
//     int result = await db.rawDelete('DELETE FROM $personTable  WHERE $colId=$id');
//     return result;
// }

// //pegar total de linhas
//   Future <int> getCount() async{
//     Database db = await this.database;
//     List<Map<String,dynamic>> x = await db.rawQuery('SELECT COUNT(*) from $personTable');
//     int result = Sqflite.firstIntValue(x);
//     return result;
//   }
// //GETCOUNT2
//   Future <List<Person>> getCount2() async{
//     var personMapList = await getPersonMapList();
//     int count =personMapList.length;
//   }


}