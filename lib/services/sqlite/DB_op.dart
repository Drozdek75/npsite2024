import 'dart:async';

import 'package:npsite/models/menu.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:core';
import 'package:path/path.dart';


class DbOp {

  static Database?  _database;
  static const String TABLE_PIZZE = "pizze";
  static const String TABLE_INGREDIENTI = 'ingredienti';
  static const String DET_PIZZE_INGREDIENTI = 'det_pizze_ingredienti';
 static const String TABLE_ALLERGENI = 'tab_allergeni';
 static const String TABLE_VALORI = 'tab_valori';
 static const String DET_PIZZE_VALORI = 'det_pizze_valori';
 static const String DET_PIZZE_ALLERGENI = 'det_pizze_allergeni';
 static const String TABLE_PARAMETER = 'parametri';

 static final DbOp instance = DbOp._internal();

 DbOp._internal();




 void init() async {
    await db;
}


  Future<Database?> get db async {
      if(_database != null) {
        print('diverso da null');
          return _database;
      }
      else {
        _database = await initDatabase();
        print('uguale a null');
        return _database;
      }
  }
  
  Future<Database> initDatabase() async {
    
    print('dentro a init dtabase');
    final dir = await getDatabasesPath();
    final path = join(dir, 'np.db');
    print('=====database path====== ${path}');
    return  await openDatabase(path, version: 1, onCreate: _onCreate);
   
  }


  


  FutureOr<void> _onCreate(Database db, int version) async{
      await db.execute('CREATE TABLE $TABLE_PIZZE '
      '(key INTEGER PRIMARY KEY AUTOINCREMENT,'
      ' nome TEXT,'
      ' descrizione TEXT,'
      ' prezzo INTEGER,'
      ' like INTEGER'
      ')'
      );
    
      await db.execute('CREATE TABLE $TABLE_INGREDIENTI '
      '(id INTEGER PRIMARY KEY AUTOINCREMENT, '
      ' nome TEXT,'
      ' descrizione TEXT,'
      ' prezzo INTEGER,' 
      ' tipologia TEXT,'     
      ' key INTEGER'
      ')'
      );

       await db.execute('CREATE TABLE $TABLE_ALLERGENI '
       '(id INTEGER PRIMARY KEY AUTOINCREMENT,'
       ' nome TEXT,'
       ' descrizione TEXT'
       ')'       
       );

       await db.execute('CREATE TABLE $TABLE_VALORI '
       '(id INTEGER PRIMARY KEY AUTOINCREMENT,'
       ' kj INTEGER,'
       ' kcal INTEGER,'
       ' carboidrati INTEGER,'
       ' zuccheri INTEGER,'
       ' sale INTEGER,'
       ' grassi INTEGER,'
       ' fibre INTEGER,'
       ' grassi_saturi INTEGER,'
       ' proteine INTEGER'
       ')'       
       );

       await db.execute('CREATE TABLE $DET_PIZZE_INGREDIENTI '
       '(id INTEGER PRIMARY KEY AUTOINCREMENT,'
       ' cod_pizza INTEGER,'
       ' cod_ingrediente INTEGER'
       ')'
       );

       await db.execute('CREATE TABLE $DET_PIZZE_ALLERGENI '
       '(id INTEGER PRIMARY KEY AUTOINCREMENT,'
       ' cod_pizza INTEGER,'
       ' cod_allergeni INTEGER'
       ')'
       );

       await db.execute('CREATE TABLE $DET_PIZZE_VALORI '
       '(id INTEGER PRIMARY KEY AUTOINCREMENT,'
       ' cod_pizza INTEGER'
       ' cod_valore INTEGER'
       ')'       
       );

       await db.execute('CREATE TABLE $TABLE_PARAMETER '
       '(id INTEGER PRIMARY KEY AUTOINCREMENT,'
       ' update_version TEXT,'
       ' last_update_time INTEGER'
       ')'
       );
  }


   Future<void> insertNewIngrediente(ListaIngredienti ingrediente) async {
      await db.then((datab) {
        print(datab == null);
         datab?.insert('${TABLE_INGREDIENTI}', 
          ingrediente.toJson()
          /*  'nome':'mozzarella',
            'descrizione': 'mozzarella fior di latte',
            'prezzo': 1.00*/
         );
      });
   }

   Future<void> getIngredienti() async {
      await db.then((value) {
          var data = value?.query('${TABLE_INGREDIENTI}');
          data?.then((value) {
              List<Map> lst = value;
              print(lst.length);
              print(lst);
          });
      });
   }

   Future<bool> versionExsist() async {
    int len =0;
    await db.then((value) async {
       len = Sqflite.firstIntValue(await value!.rawQuery('SELECT COUNT(*) FROM $TABLE_PARAMETER'))!;       
    });
    return len > 0;
   }

Future<void> updateVersion(int timeUpdate) async {
   await versionExsist().then((value) {
      if(!value) {
         db.then((value) {
           value!.insert('$TABLE_PARAMETER', {'update_version': '2024-1','last_update_time': timeUpdate});
         });
      }
      else {
        db.then((dbb) {
            dbb!.update('$TABLE_PARAMETER', {'last_update_time': timeUpdate});
        });
      }
   });
}

Future<int> getLastUpdateTime() async {
  int timeMilli=0;
 /* return await db.then((value) {
      var val = value!.query('$TABLE_PARAMETER');
     return val.then((value) {
        return value.last['last_update_time'] as int;
     });
     
  });*/
  return timeMilli;
  
}


}