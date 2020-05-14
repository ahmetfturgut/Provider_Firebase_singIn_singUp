import 'package:flutter/material.dart';
import 'package:flutter_state_management/user_repository.dart';
import 'package:provider/provider.dart';

class KullaniciEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, UserRepository userRepo, child) => Scaffold(
        appBar: AppBar(
          title: Text("Kullanıcı Ekranı"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("Kullanici :" + userRepo.user.email),
              RaisedButton(
                onPressed: () {
                  userRepo.signOut();
                },
                child: Text("Çıkış Yap"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
