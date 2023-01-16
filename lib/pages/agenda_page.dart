import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  static const nameRoute = 'agenda';
  DateTime selectDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectDate,
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2023),
                  initialEntryMode: DatePickerEntryMode.calendar,

                  selectableDayPredicate: (day) {
                    if (day.isAfter(
                      DateTime.now().subtract(Duration(days: 3)))) &&
                      (day.isBefore(DateTime.now().add(Duration(days: 2)))) {
                        return true;
                    }
                      return false;
                    },
                ).then(
                  (value) {
                    if (value != null)
                      setState(() {
                        selectDate = value;
                      });
                  },
                );
              },
              child: Text("Pick a day"),
            ),
          ],
        ),
      ),
    );
  }
}