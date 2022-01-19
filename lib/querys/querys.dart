import 'package:prays/dbhelper.dart';
import 'package:prays/models/Feels.dart';

class QueryCtr {
  DbHelper con = new DbHelper();

  Future<List<Feels>> getAllFeels() async {
    var dbClient = await con.db;

    var res2 =
        await dbClient.rawQuery("SELECT * from feelings order by fee_name asc");

    List<Feels> list =
        res2.isNotEmpty ? res2.map((c) => Feels.fromMap(c)).toList() : null;
    return list;
  }
}
