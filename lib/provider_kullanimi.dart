import 'package:flutter/material.dart';
import 'package:flutter_state_management/sayac.dart';
import 'package:provider/provider.dart';

class ProviderKullanimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mySayac = Provider.of<Sayac>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Kullanımı"),
      ),
      body: Container(
        child: Center(
          child: Text('${mySayac.sayac}',style: TextStyle(fontSize: 25)),
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        FloatingActionButton(
          heroTag: "1",
          onPressed: () {
            mySayac.artir();
          },
          child: Icon(Icons.add),
        ),
        SizedBox(height: 8,),
        FloatingActionButton(
          heroTag: "2",
          onPressed: () {
            mySayac.azalt();
          },
          child: Icon(Icons.remove),
        ),
      ]),
    );
  }
}
