import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socialpp/modeller/kullanici.dart';
import 'package:socialpp/sayfalar/anasayfa.dart';
import 'package:socialpp/sayfalar/girissayfasi.dart';
import 'package:socialpp/servisler/yetkilendirmeservisi.dart';

class Yonlendirme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _yetkilendirmeServisi =
        Provider.of<YetkilendirmeServisi>(context, listen: false);

    return StreamBuilder(
        stream: _yetkilendirmeServisi.durumTakipcisi,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          }
          if (snapshot.hasData) {
            Kullanici aktifKullanici = snapshot.data;
            _yetkilendirmeServisi.aktifKullaniciId = aktifKullanici.id;
            return AnaSayfa();
          } else {
            return GirisSayfasi();
          }
        });
  }
}
