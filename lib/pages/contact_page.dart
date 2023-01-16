import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  static const nameRoute = 'contact';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("contact us"),
      ),
      body: Center(
        child: Text(
          "Contact Us",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }

  Widget _buildCard() {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Jl. Pajajaran Raya no 141',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('Bogor, Jawa Barat'),
              leading: Icon(
                Icons.menu,
                color: Colors.blue[500],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '(0251) 636771',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text('test@eventmusik.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
