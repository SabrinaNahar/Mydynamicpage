import 'package:flutter/material.dart';

import 'homepage.dart';

class RegPage extends StatefulWidget {
  static const String id = "reg_page";
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Image.asset('assets/wela.jpg')),
          SizedBox(height: 30.0,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ("ENTER YOUR EMAIL ID"),
            ),
          ),
          SizedBox(height: 30.0,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ("CREATE YOUR USERNAME"),
            ),
          ),
          SizedBox(height: 20.0,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ("CREATE YOUR PASSWORD"),
            ),
          ),
          SizedBox(height: 30.0,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ("CONFIRM THE PASSWORD"),
            ),
          ),
          SizedBox(height: 20.0,),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, HomePage.id);
            },
            child: Text("GO BACK TO HOME",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),),
          )
        ],
      ),

    );
  }
}
