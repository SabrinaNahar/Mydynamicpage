import 'package:flutter/material.dart';
import 'package:mydynamic/auth_help.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),


            RaisedButton(
              child: Text('LOG OUT'),
              onPressed: () {

                AuthHelp.LogOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}