import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _JK = "";
  String _Member = "";

  void opsiJK(String? value) {
    setState(() {
      _JK = value!;
    });
  }

  //fungsi ? untuk mengecek null atau tidak
  //fungsi ! untuk memastikan valuenya mempunyai nilai
  void opsiMember(String? value) {
    setState(() {
      _Member = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text("Register"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    labelText: "Nama Lengkap",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              RadioListTile(
                value: "Pria",
                title: Text("Pria"),
                groupValue: _JK,
                activeColor: Colors.red,
                onChanged: (String? value) {
                  opsiJK(value);
                },
              ),
              RadioListTile(
                value: "Wanita",
                title: Text("Wanita"),
                groupValue: _JK,
                onChanged: (String? value) {
                  opsiJK(value);
                },
                activeColor: Colors.red,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              RadioListTile(
                value: "Pria",
                title: Text("Member"),
                groupValue: _Member,
                onChanged: (String? value) {
                  opsiMember(value);
                },
                activeColor: Colors.red,
              ),
              RadioListTile(
                value: "Non-Member",
                title: Text("Non-Member"),
                groupValue: _Member,
                onChanged: (String? value) {
                  opsiMember(value);
                },
                activeColor: Colors.red,
              ),
              TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Text("Login")),
            ],
          )),
    );
  }
}
