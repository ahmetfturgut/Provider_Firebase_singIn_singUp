import 'package:flutter/material.dart';
import 'package:flutter_state_management/kullanici_ekrani.dart';
import 'package:flutter_state_management/login.dart';
import 'package:flutter_state_management/user_repository.dart';
import 'package:provider/provider.dart';

class ProviderFirebaseKullanimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, UserRepository userRepo, child) {
        switch (userRepo.durum) {
          case UserDurum.Idle:
            return SplashEkrani();
          case UserDurum.OturumAciliyor:
          case UserDurum.OturumAcilmamis:
            return LoginEkrani();
          case UserDurum.OturumAcik:
            return KullaniciEkrani();
        }
      },
    );
  }
}

class SplashEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Ekranı"),
      ),
      body: Center(child: Text("Splash"),),
    );
  }
}
