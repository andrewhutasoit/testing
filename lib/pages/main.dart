import 'package:flutter/material.dart';
import 'package:testing/pages/agenda_page.dart';
import 'package:testing/pages/contact_page.dart';
import 'package:testing/pages/home_page.dart';
import 'package:testing/pages/login_page.dart';
import 'package:testing/pages/notification_page.dart';
import 'package:testing/pages/list_page.dart';

void main() {
  runApp(MyApp());
}

//kelas ini berfungsi sebagai route
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => HomePage(),
        LoginPage.nameRoute: (context) => LoginPage(),
        NotificationPage.nameRoute: (context) => NotificationPage(),
        ListPage.nameRoute: (context) => ListPage(),
        ContactPage.nameRoute: (context) => ContactPage(),
        AgendaPage.nameRoute: (context) => AgendaPage(),
      },
    );
  }
}
