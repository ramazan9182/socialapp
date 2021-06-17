import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socialpp/servisler/yetkilendirmeservisi.dart';
import 'package:socialpp/yonlendirme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<YetkilendirmeServisi>(
      create: (_) => YetkilendirmeServisi(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Projem',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Yonlendirme()),
    );
  }
}
