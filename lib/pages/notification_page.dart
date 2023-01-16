import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  static const nameRoute = 'notification';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("notification"),
      ),
      body: Center(
        child: Text(
          "Notification",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
