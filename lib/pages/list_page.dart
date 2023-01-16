import 'package:flutter/material.dart';

//Kelas ini untuk menampilkan list event yang akan berlangsung
class ListPage extends StatelessWidget {
  static const nameRoute = 'list';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list"),
      ),
      body: Center(
        child: Text(
          "List",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }

  Widget _buildList() {
    return ListView(
      children: [
        _tile('GudFestival 2022', 'GBK Senayan, Jakarta, DKI Jakarta',
            Icons.theaters),
        _tile('PestaPora', 'Jakarta, DKI Jakarta', Icons.theaters),
        _tile('Pesta Rakyat Dewa 19',
            'JIS, Kemayoran Jakarta Utara, DKI Jakarta', Icons.theaters),
        _tile('Lany - November to remember',
            'ICE BSD, Tangerang Selatan, Banten', Icons.theaters),
        _tile('Noah Story', 'TSM Makassar, Makassar', Icons.theaters),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
  }
}
