import 'package:flutter/material.dart';
import 'package:prays/models/Feels.dart';
import 'package:prays/querys/querys.dart';

class MenuMain extends StatefulWidget {
  @override
  _MenuMainState createState() => _MenuMainState();
}

class _MenuMainState extends State<MenuMain> {
  QueryCtr _query = new QueryCtr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prayers'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: FutureBuilder<List>(
          future: _query.getAllFeels(),
          initialData: List(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    padding: const EdgeInsets.all(10.0),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, i) {
                      return _buildRow(snapshot.data[i]);
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }

  Widget _buildRow(Feels feel) {
    return ListTile(
      title: new Text(feel.name),
      trailing: Icon(Icons.add_photo_alternate),
      onTap: () {
        print("ok");
      },
    );
  }
}
