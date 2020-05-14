import 'package:flutter/material.dart';
import 'package:flutter_state_management/provider_firebase_kullanimi.dart';
import 'package:flutter_state_management/provider_kullanimi.dart';
import 'package:flutter_state_management/sayac.dart';
import 'package:flutter_state_management/user_repository.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Sayac>(create: (context) => Sayac(0)),
        ChangeNotifierProvider<UserRepository>(
            create: (context) => UserRepository()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProviderKullanimi()),
                );
              },
              child: Text("Provider Kullanımı"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProviderFirebaseKullanimi()),
                );
              },
              child: Text("Provider Firebase Kullanımı"),
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
